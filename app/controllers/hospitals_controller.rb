class HospitalsController < ApplicationController
  # GET /hospitals
  # GET /hospitals.json
  def index
    @hospitals = Hospital.all
    #@hospitals = Hospital.paginate(:page => params[:page])
    #@hospitals = Hospital.order('referral_region').order('name').page(params[:page])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @hospitals }
    end
  end

  # GET /hospitals/1
  # GET /hospitals/1.json
  def show
    @hospital = Hospital.find(params[:id])
    @hospital.update_lat_lng
    @costs = @hospital.costs.includes(:drg)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @hospital }
    end
  end

end
