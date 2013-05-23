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
#

class Hospital < ActiveRecord::Base
  set_primary_key :ext_id
  #attr_accessible :address, :city, :ext_id, :name, :referral_region, :state, :zipcode
  has_many :costs, :foreign_key => 'hospital_ext_id'

  def address_string
  	return self.address + ", " + self.city + ", " + self.state + " " + self.zipcode
  end

  def uc_name
    return self.name.split(' ').map(&:capitalize).join(' ')
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
