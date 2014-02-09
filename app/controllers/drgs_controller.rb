class DrgsController < ApplicationController
  # GET /drgs
  # GET /drgs.json
  def index
    @drgs = Drg.find(:all,:order => "description",:include => "aliases")
    @states = State.find(:all,:order => "name")
    @regions = Hospital.select('referral_region').group(:referral_region).count
  end

  # GET /drgs/1
  # GET /drgs/1.json
  def show
    @drg = Drg.find(params[:id],:include => "aliases")
    @icd10s = @drg.icd10s
    @thetitle = "Compare Medical billing costs for "+@drg.uc_description+" in U.S. Hospitals"
    @count = @drg.costs.count
    @costs =  @drg.costs.order('average_covered_charges desc').includes(:hospital).limit(10)
    @average_covered_charges = @costs.average('average_covered_charges')
    @average_total_payments = @costs.average('average_total_payments')
    @states = State.find(:all,:order => "name")
    @regions = Hospital.select('referral_region').group(:referral_region).count
  end

  def state
    @state = State.find_by_abbrev(params[:state_id])
    @drg = Drg.find(params[:id],:include => "aliases")
    @icd10s = @drg.icd10s
    @thetitle = "Compare Medical billing costs for "+@drg.uc_description+" in "+@state.name.capitalize+" Hospitals"
    @costs =  @drg.costs.where("hospitals.state = '"+params[:state_id]+"'").order('average_covered_charges desc').includes(:hospital)
    @count = @costs.count
    @average_covered_charges = @costs.average('average_covered_charges')
    @average_total_payments = @costs.average('average_total_payments')
    @states = State.find(:all,:order => "name")
    @regions = Hospital.select('referral_region').group(:referral_region).count
    render :show  
  end

  def region
    @region = params[:region_id]
    @drg = Drg.find(params[:id],:include => "aliases")
    @icd10s = @drg.icd10s
    @thetitle = "Compare Medical billing costs for "+@drg.uc_description+" in "+@region+" Hospitals"
    @costs =  @drg.costs.where("hospitals.referral_region = '"+params[:region_id]+"'").order('average_covered_charges desc').includes(:hospital)
    @count = @costs.count
    @average_covered_charges = @costs.average('average_covered_charges')
    @average_total_payments = @costs.average('average_total_payments')
    @states = State.find(:all,:order => "name")
    @regions = Hospital.select('referral_region').group(:referral_region).count
    render :show  
  end


end
