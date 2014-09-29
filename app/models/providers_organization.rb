class ProvidersOrganization < ActiveRecord::Base
	belongs_to :provider, :foreign_key => :npi_id, :primary_key => :npi
	belongs_to :organization
end
