
class Specialty < ActiveRecord::Base
  has_many :providers_specialties, :foreign_key => :npi_id
  has_many :specialties, :through => :providers_specialties

end
