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
#  position                :integer
#  count                   :integer
#  percentile              :float
#

require 'spec_helper'

describe Cost do
  pending "add some examples to (or delete) #{__FILE__}"
end
