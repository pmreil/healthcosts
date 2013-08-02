# == Schema Information
#
# Table name: drgs
#
#  id                  :integer          not null
#  code                :integer          primary key
#  description         :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avg_covered_charges :float
#  avg_total_payments  :float
#

require 'spec_helper'

describe Drg do
  pending "add some examples to (or delete) #{__FILE__}"
end
