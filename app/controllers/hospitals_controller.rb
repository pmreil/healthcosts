class HospitalsController < ApplicationController
  # GET /hospitals
  # GET /hospitals.json
  def index
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
    if !params[:id].nil?
      @state = params[:id]
      @hospitals = Hospital.select("ext_id,name,address,city,state,zipcode,referral_region").where("state = ?",params[:id])
    else
      @state = 'ALL'
      @hospitals = Hospital.select("ext_id,name,address,city,state,zipcode,referral_region")
    end
  end

  # GET /hospitals/1
  # GET /hospitals/1.json
  def show
    @hospital = Hospital.find(params[:id])
    @hospital.update_lat_lng
    @costs = @hospital.costs.includes(:drg)

  end

end
