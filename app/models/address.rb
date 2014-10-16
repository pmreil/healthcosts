# == Schema Information
#
# Table name: addresses
#
#  id               :integer          not null, primary key
#  pacid            :integer
#  address1         :string(255)
#  address2         :string(255)
#  city             :string(255)
#  state_id         :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  zipcode          :integer
#  addressable_id   :integer
#  addressable_type :string(255)
#

class Address < ActiveRecord::Base
	set_primary_key :pacid
	#belongs_to :addressable, polymorphic: true
	#has_many :providers
	#has_many :providers, through: :organizations
	has_one :organization
end
