class HospitalsController < ApplicationController
  # GET /hospitals
  # GET /hospitals.json
  def index
    @regions = Hospital.select('referral_region').group(:referral_region).count
  end

  def region
    @region = params[:id]
    @hospitals = Hospital.select("ext_id,name,address,city,state,zipcode,referral_region").where("referral_region = ?",params[:id])
  end

  # GET /hospitals/1
  # GET /hospitals/1.json
  def show
    @hospital = Hospital.find(params[:id])
    @hospital.update_lat_lng
    @costs = @hospital.costs.includes(:drg)

  end

end
