class OrganizationsController < ApplicationController

  def index
  end

  def search
    if !params[:q].nil?
      if !params[:specialty].nil? && !params[:specialty].empty?
        @providers = Provider.joins(:specialties).includes(:hospitals,:organizations,:addresses).where('specialty_id = ?',params[:specialty]).find_with_index(params[:q])
        @specialty_passed = Specialty.find(params[:specialty])
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
    @provider = Provider.includes().find(params[:id])
    @provider.organizations.each do |org| 
      org.addresses.each do |addr|
        addr.update_lat_lng
      end
    end
  end

end
