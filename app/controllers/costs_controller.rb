class CostsController < ApplicationController
  # GET /costs
  # GET /costs.json
  def index
    @costs = Cost.all
  end

  # GET /costs/1
  # GET /costs/1.json
  def show
    @cost = Cost.find(params[:id])
  end

end
