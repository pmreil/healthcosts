# == Schema Information
#
# Table name: addresses
#
#  id               :integer          not null
#  pacid            :integer          primary key
#  address1         :string(255)
#  address2         :string(255)
#  city             :string(255)
#  state_id         :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  zipcode          :integer
#  addressable_id   :integer
#  addressable_type :string(255)
#  latitude         :float
#  longitude        :float
#

class Address < ActiveRecord::Base
	set_primary_key :pacid
	#belongs_to :addressable, polymorphic: true
	#has_many :providers
	#has_many :providers, through: :organizations
	has_one :organization

  reverse_geocoded_by :latitude, :longitude
  geocoded_by :address_string   # can also be an IP address
  after_validation :geocode

  def state
 	return State.find(self.state_id).abbrev
  end

  def address_string
  	return self.address1 + ", " + self.city + ", " + self.state + " " + self.zipcode.to_s
  end

  def update_lat_lng
  	if !self.latitude.nil? && !self.longitude.nil?
  	  return [self.latitude,self.longitude]
  	else
  	  lat_lng = Geocoder.coordinates(self.address_string)
  	  if !lat_lng.nil?
  	  	self.latitude = lat_lng[0]
  	  	self.longitude = lat_lng[1]
  	  	self.save
  	  	return lat_lng
  	  end
  	end
  end


end
