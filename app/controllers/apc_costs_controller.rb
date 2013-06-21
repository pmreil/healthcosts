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
    @costs = []
    @apc = nil
    @params.each do |x|
      cost = ApcCost.includes(:hospital).find x
      if !@apc.nil? && cost.apc != @apc
        @error = "You can only compare the same diagnosis/procedures"
      end
      @apc = cost.apc
      @costs.push cost
    end
  end

end
