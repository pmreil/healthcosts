class DrgsController < ApplicationController
  # GET /drgs
  # GET /drgs.json
  def index
    @drgs = Drg.all
  end

  # GET /drgs/1
  # GET /drgs/1.json
  def show
    @drg = Drg.find(params[:id])
    @costs =  @drg.costs.order('average_covered_charges desc').includes(:hospital)
    @average_covered_charges = @costs.average('average_covered_charges')
    @average_total_payments = @costs.average('average_total_payments')
  end

end
