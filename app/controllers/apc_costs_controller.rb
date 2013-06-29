class ApcCostsController < ApplicationController
  def index
    @apc_costs = Cost.all
  end

  def show
    @apc_cost = ApcCost.find(params[:id])
    @apc = @apc_cost.apc
    @hospital = @apc_cost.hospital
  end

  def compare
  	@params = params[:cost_id]
  end

end
