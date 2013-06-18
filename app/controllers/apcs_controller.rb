class ApcsController < ApplicationController
  def index
    @apcs = Apc.find(:all,:order => "description")


 acosts = ApcCost.all

    acosts.each do |x| 
    	puts x.id
    	if x.position.nil?
	      apc = x.apc.id
  	    ext_id = x.hospital.ext_id
    	  sql = "SELECT x.id, x.position, x.average_estimated_submitted_charges, x.count, ((x.count-x.position)/x.count) as percentile FROM
(SELECT t.id, t.apc_code,t.average_estimated_submitted_charges,t.hospital_ext_id, @rownum := @rownum+1 AS position, (select count(*) from apc_costs where apc_code = "+apc.to_s+") as count
FROM apc_costs t
JOIN (SELECT @rownum := 0) r
WHERE t.apc_code = "+apc.to_s+"
ORDER BY t.average_estimated_submitted_charges) x
WHERE x.hospital_ext_id = '"+ext_id.to_s+"'"

      @records_array = ActiveRecord::Base.connection.execute(sql)
      a = @records_array
      	x.position = a.first[1]
 	    	x.count = a.first[3]
  	    x.percentile = a.first[4]
    	  x.save
    	 end
    	end
  end

  def show
    @apc = Apc.find(params[:id])
    @apc_costs =  @apc.apc_costs.order('average_estimated_submitted_charges desc').includes(:hospital)
    @average_estimated_submitted_charges = @apc_costs.average('average_estimated_submitted_charges')
    @average_total_payments = @apc_costs.average('average_total_payments')
  end



end
