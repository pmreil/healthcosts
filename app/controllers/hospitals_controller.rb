class HospitalsController < ApplicationController
  # GET /hospitals
  # GET /hospitals.json
  def index
    @states = State.find(:all,:order => "name")
    @regions = Hospital.select('referral_region').group(:referral_region).count
  end

  def region
    if params[:id] == "all"
      @region = "the United States"
      @hospitals = Hospital.select("ext_id,name,address,city,state,zipcode,referral_region")
    else
      @region = params[:id]
      @hospitals = Hospital.select("ext_id,name,address,city,state,zipcode,referral_region").where("referral_region = ?",params[:id])
    end
  end

  def state
    @state = @hospitals = ''
    if !params[:id].nil?
      @state = State.find_by_abbrev(params[:id]).name.capitalize
      @hospitals = Hospital.select("ext_id,name,address,city,state,zipcode,referral_region").where("state = ?",params[:id])
    else
      @state = 'the United States'
      @hospitals = Hospital.select("ext_id,name,address,city,state,zipcode,referral_region")
    end
  end

  # GET /hospitals/1
  # GET /hospitals/1.json
  def show
    @hospital = Hospital.find(params[:id])
    @hospital.update_lat_lng
    @costs = @hospital.costs.includes(:drg => :aliases)
    @apc_costs = @hospital.apc_costs.includes(:apc => :aliases)
    @hcahps_metrics = @hospital.metric_values.includes(:metric_key)
  end

end
