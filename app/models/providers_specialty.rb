# == Schema Information
#
# Table name: providers_specialties
#
#  npi_id       :integer          not null
#  specialty_id :integer          not null
#  primary_flag :boolean
#

class ProvidersSpecialty < ActiveRecord::Base
	belongs_to :provider, :foreign_key => :npi_id, :primary_key => :npi
	belongs_to :specialty
end
