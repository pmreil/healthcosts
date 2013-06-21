class ApcsController < ApplicationController
  def index
    @apcs = Apc.find(:all,:order => "description")
    @states = State.find(:all,:order => "name")
    @regions = Hospital.select('referral_region').group(:referral_region).count
  end

  def show
    @apc = Apc.find(params[:id])
    @apc_costs =  @apc.apc_costs.order('average_estimated_submitted_charges desc').includes(:hospital)
    @average_estimated_submitted_charges = @apc_costs.average('average_estimated_submitted_charges')
    @average_total_payments = @apc_costs.average('average_total_payments')
    @states = State.find(:all,:order => "name")
    @regions = Hospital.select('referral_region').group(:referral_region).count
  end

  def state
    @state = State.find_by_abbrev(params[:state_id])
    @apc = Apc.find(params[:id])
    @thetitle = "Compare Medical billing costs for "+@apc.uc_description+" in "+@state.name.capitalize+" Hospitals"
    @apc_costs =  @apc.apc_costs.where("hospitals.state = '"+params[:state_id]+"'").order('average_estimated_submitted_charges desc').includes(:hospital)
    @average_estimated_submitted_charges = @apc_costs.average('average_estimated_submitted_charges')
    @average_total_payments = @apc_costs.average('average_total_payments')
    @states = State.find(:all,:order => "name")
    @regions = Hospital.select('referral_region').group(:referral_region).count
    render :show  
  end

  def region
    @region = params[:region_id]
    @apc = Apc.find(params[:id])
    @thetitle = "Compare Medical billing costs for "+@apc.uc_description+" in "+@region+" Hospitals"
    @apc_costs =  @apc.apc_costs.where("hospitals.referral_region = '"+params[:region_id]+"'").order('average_estimated_submitted_charges desc').includes(:hospital)
    @average_estimated_submitted_charges = @apc_costs.average('average_estimated_submitted_charges')
    @average_total_payments = @apc_costs.average('average_total_payments')
    @states = State.find(:all,:order => "name")
    @regions = Hospital.select('referral_region').group(:referral_region).count
    render :show  
  end


end
