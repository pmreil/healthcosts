class ApcsController < ApplicationController
  def index
    @apcs = Apc.find(:all,:order => "description")
  end

  def show
    @apc = Apc.find(params[:id])
    @apc_costs =  @apc.apc_costs.order('average_estimated_submitted_charges desc').includes(:hospital)
    @average_estimated_submitted_charges = @apc_costs.average('average_estimated_submitted_charges')
    @average_total_payments = @apc_costs.average('average_total_payments')
  end

end
