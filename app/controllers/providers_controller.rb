class ProvidersController < ApplicationController

  def index
    #@specialties = Specialty.all
    @specialties_array = Specialty.order(:name).map { |specialty| [specialty.name, specialty.id] }
    @specialties_array.unshift(['Pick a Specialty',""])
    @states_array = State.order(:abbrev).map { |state| [state.abbrev, state.id] }
    @states_array.unshift(['Pick a State',""])
  end

  def search
    if !params[:q].nil?
      passed_specialty = !params[:specialty].nil? && !params[:specialty].empty?
      passed_state = !params[:state].nil? && !params[:state].empty?

      if passed_specialty && passed_state
        @providers = Provider.joins(:specialties).joins(:addresses).includes(:hospitals,:organizations).where('specialty_id = ? AND state_id = ?',params[:specialty],params[:state]).find_with_index(params[:q])
        @specialty_passed = Specialty.find(params[:specialty])
        @state_passed = State.find(params[:state])
      elsif passed_specialty
        @providers = Provider.joins(:specialties).includes(:hospitals,:organizations,:addresses).where('specialty_id = ?',params[:specialty]).find_with_index(params[:q])
        @specialty_passed = Specialty.find(params[:specialty])
      elsif passed_state 
        @providers = Provider.joins(:addresses).includes(:hospitals,:organizations,:specialties).where('state_id = ?',params[:state]).find_with_index(params[:q])
        @state_passed = State.find(params[:state])
      else
        @providers = Provider.find_with_index(params[:q])
      end
      @providersCount = @providers.count
      @providers = @providers.first(30) if @providersCount > 30
    end
  end

  def geolocate
    if !params[:q].nil?
      @search_term = params[:q]
      @hospitals = Hospital.near(params[:q],30)
      @geolocateSearch = true
      @hospitalsCount = @hospitals.count
      @hospitals = @hospitals.first(30) if @hospitalsCount > 30
    end
    render :search
  end

  # GET /hospitals/1
  # GET /hospitals/1.json
  def show
    #@provider = Provider.includes(:specialties,:hospitals,:providers_costs,:organizations,:addresses).find(params[:id])
    @provider = Provider.includes(:providers_costs,:hcpcs).find(params[:id])
    @provider_name = @provider.cap_name
    @organizations = @provider.organizations
    @organizations.each do |org| 
      org.addresses.each do |addr|
        addr.update_lat_lng
      end
    end
    client = SODA::Client.new({:domain => 'openpaymentsdata.cms.gov', :app_token => 'ppNX1qcrRdJ0p31TJbl7Vu23F', :ignore_ssl => true})
    @payment_data = client.get("sb72-gakb", {:physician_first_name => @provider.first_name, :physician_last_name => @provider_last_name})

  end

  def npi
    #@provider = Provider.includes(:specialties,:hospitals,:providers_costs,:organizations,:addresses).find(params[:id])
    @provider = Provider.includes(:providers_costs,:hcpcs).find_by_npi(params[:id])
    @provider_name = @provider.cap_name
    @organizations = @provider.organizations
    @organizations.each do |org| 
      org.addresses.each do |addr|
        addr.update_lat_lng
      end
    end
    client = SODA::Client.new({:domain => 'openpaymentsdata.cms.gov', :app_token => 'ppNX1qcrRdJ0p31TJbl7Vu23F', :ignore_ssl => true})
    @payment_data = client.get("sb72-gakb", {:physician_first_name => @provider.first_name, :physician_last_name => @provider.last_name})

    render "show"

  end


end
