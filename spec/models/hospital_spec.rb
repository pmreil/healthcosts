# == Schema Information
#
# Table name: hospitals
#
#  id              :integer          not null
#  ext_id          :integer          primary key
#  name            :string(255)
#  address         :string(255)
#  city            :string(255)
#  state           :string(255)
#  zipcode         :string(255)
#  referral_region :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  latitude        :float
#  longitude       :float
#  county          :string(255)
#  phone           :integer
#  hospital_type   :string(255)
#  ownership       :string(255)
#  emergency       :boolean
#

require 'spec_helper'

describe Hospital do
  pending "add some examples to (or delete) #{__FILE__}"
end
