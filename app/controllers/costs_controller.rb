class CostsController < ApplicationController
  def index
    @costs = Cost.all
  end

  def show
    @cost = Cost.find(params[:id])
    @drg = @cost.drg
    @hospital = @cost.hospital
  end

#    acosts = Cost.all

#    acosts.each do |x| 
#      drg = x.drg.id
#      ext_id = x.hospital.ext_id
#      sql = "SELECT x.id, x.position, x.average_covered_charges, x.count, ((x.count-x.position)/x.count) as percentile FROM
#(SELECT t.id, t.drg_code,t.average_covered_charges,t.hospital_ext_id, @rownum := @rownum+1 AS position, (select count(*) from costs where drg_code = "+drg.to_s+") as count
#FROM costs t
#JOIN (SELECT @rownum := 0) r
#WHERE t.drg_code = "+drg.to_s+"
#ORDER BY t.average_covered_charges) x
#WHERE x.hospital_ext_id = '"+ext_id.to_s+"'"

      #sql = "Select * from drgs"
#      @records_array = ActiveRecord::Base.connection.execute(sql)
#      a = @records_array

#      x.position = a.first[1]
#      x.count = a.first[3]
#      x.percentile = a.first[4]
#      x.save
#    end
  def compare
  	@params = params[:cost_id]
#  	params.each do |param|
#  		if param.class == (Cost)
#  			@ids.push(param)
#  		end
#  	end
  end

end
