class Hospital < ActiveRecord::Base
  attr_accessible :address, :city, :ext_id, :name, :referral_region, :state, :zipcode
end
