class Cost < ActiveRecord::Base
  attr_accessible :average_total_payment, :drg_code, :hospital_ext_id, :total_discharges, :year
end
