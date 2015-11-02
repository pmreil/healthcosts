class HcpcssController < ApplicationController

  autocomplete :hcpcs, :description

  # GET /drgs
  # GET /drgs.json
  def index
    #@hcpcss = Hcpcs.find(:all,:order => "description")
  end

  # GET /hcpcs/1
  def show
    @hcpcs = Hcpcs.find(params[:id])
    @thetitle = "Compare Medical billing costs for "+@Hcpcs.uc_description+" by U.S. Physicians"
    @count = @hcpcs.providers_costs.count
    #@costs =  @hcpcs.providers_costs.order('average_covered_charges desc').includes(:physician).limit(10)
    #@average_covered_charges = @costs.average('average_covered_charges')
    #@average_total_payments = @costs.average('average_total_payments')
  end

end
