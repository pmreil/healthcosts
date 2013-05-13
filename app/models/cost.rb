# == Schema Information
#
# Table name: costs
#
#  id                      :integer          not null, primary key
#  drg_code                :integer
#  hospital_ext_id         :integer
#  year                    :integer
#  total_discharges        :integer
#  average_covered_charges :integer
#  average_total_payments  :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#

class Cost < ActiveRecord::Base
  attr_accessible :average_total_payment, :drg_code, :hospital_ext_id, :total_discharges, :year
end
