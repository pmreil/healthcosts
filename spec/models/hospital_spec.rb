# == Schema Information
#
# Table name: hospitals
#
#  id              :integer          not null, primary key
#  ext_id          :integer
#  name            :string(255)
#  address         :string(255)
#  city            :string(255)
#  state           :string(255)
#  zipcode         :string(255)
#  referral_region :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'spec_helper'

describe Hospital do
  pending "add some examples to (or delete) #{__FILE__}"
end
