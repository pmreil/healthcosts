class CostsController < ApplicationController
  # GET /costs
  # GET /costs.json
  def index
    @costs = Cost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @costs }
    end
  end

  # GET /costs/1
  # GET /costs/1.json
  def show
    @cost = Cost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cost }
    end
  end

end
