# == Schema Information
#
# Table name: providers_organizations
#
#  npi_id          :integer          not null
#  organization_id :integer          not null
#

class ProvidersOrganization < ActiveRecord::Base
	belongs_to :provider, :foreign_key => :npi_id, :primary_key => :npi
	belongs_to :organization
end
