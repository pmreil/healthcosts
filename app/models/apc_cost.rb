# == Schema Information
#
# Table name: apc_costs
#
#  id                                  :integer          not null, primary key
#  apc_code                            :integer
#  hospital_ext_id                     :integer
#  year                                :integer
#  outpatient_services                 :integer
#  average_estimated_submitted_charges :integer
#  average_total_payments              :integer
#  created_at                          :datetime         not null
#  updated_at                          :datetime         not null
#  position                            :integer
#  count                               :integer
#  percentile                          :float
#

class ApcCost < ActiveRecord::Base
  #attr_accessible :average_total_payment, :drg_code, :hospital_ext_id, :total_discharges, :year
  belongs_to :hospital, :foreign_key => "hospital_ext_id"
  belongs_to :apc, :foreign_key => "apc_code"
end
