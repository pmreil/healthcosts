# == Schema Information
#
# Table name: specialties
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class Specialty < ActiveRecord::Base
  has_many :providers_specialties, :foreign_key => :npi_id
  has_many :specialties, :through => :providers_specialties

end
