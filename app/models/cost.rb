# == Schema Information
#
# Table name: costs
#
#  id                        :integer          not null, primary key
#  drg_code                  :integer
#  hospital_ext_id           :integer
#  year                      :integer
#  total_discharges          :integer
#  average_covered_charges   :integer
#  average_total_payments    :integer
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#  position                  :integer
#  count                     :integer
#  percentile                :float
#  average_medicare_payments :integer
#

class Cost < ActiveRecord::Base
  #attr_accessible :average_total_payment, :drg_code, :hospital_ext_id, :total_discharges, :year
  belongs_to :hospital, :foreign_key => "hospital_ext_id"
  belongs_to :drg, :foreign_key => "drg_code"
end
