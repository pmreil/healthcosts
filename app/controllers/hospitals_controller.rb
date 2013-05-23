class HospitalsController < ApplicationController
  # GET /hospitals
  # GET /hospitals.json
  def index
    @hospitals = Hospital.select("ext_id,name,address,city,state,zipcode,referral_region")
  end

  # GET /hospitals/1
  # GET /hospitals/1.json
  def show
    @hospital = Hospital.find(params[:id])
    @hospital.update_lat_lng
    @costs = @hospital.costs.includes(:drg)

  end

end
