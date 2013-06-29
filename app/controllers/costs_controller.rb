class CostsController < ApplicationController
  def index
    @costs = Cost.all
  end

  def show
    @cost = Cost.find(params[:id])
    @drg = @cost.drg
    @hospital = @cost.hospital
  end

  def compare
  	@params = params[:cost_id]
    @costs = []
    @drg = nil
    @params.each do |x|
      cost = Cost.find x
      if !@drg.nil? && cost.drg != @drg
        @error = "You can only compare the same diagnosis/procedures"
      end
      @drg = cost.drg
      @costs.push cost
    end
  end

end
