class HcpcssController < ApplicationController

  autocomplete :hcpcs, :description

  # GET /drgs
  # GET /drgs.json
  def index
    #@hcpcss = Hcpcs.find(:all,:order => "description")
  end

  # GET /hcpcs/1
  def show
    @hcpcs = Hcpcs.find(params[:id],:include => "aliases")
    @icd10s = @drg.icd10s
    @thetitle = "Compare Medical billing costs for "+@drg.uc_description+" in U.S. Hospitals"
    @count = @drg.costs.count
    @costs =  @drg.costs.order('average_covered_charges desc').includes(:hospital).limit(10)
    @average_covered_charges = @costs.average('average_covered_charges')
    @average_total_payments = @costs.average('average_total_payments')
    @states = State.find(:all,:order => "name")
    @regions = Hospital.select('referral_region').group(:referral_region).count
  end

end
