# == Schema Information
#
# Table name: providers_hospitals
#
#  npi_id      :integer          not null
#  hospital_id :integer          not null
#

class ProvidersHospital < ActiveRecord::Base
	belongs_to :provider, :foreign_key => :npi_id, :primary_key => :npi
	belongs_to :hospital, :foreign_key => :hospital_id
end
