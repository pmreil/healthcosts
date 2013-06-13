class ApcCost < ActiveRecord::Base
  #attr_accessible :average_total_payment, :drg_code, :hospital_ext_id, :total_discharges, :year
  belongs_to :hospital, :foreign_key => "hospital_ext_id"
  belongs_to :apc, :foreign_key => "apc_code"
end
