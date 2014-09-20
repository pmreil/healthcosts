class ProvidersOrganization < ActiveRecord::Base
	belongs_to :provider, :primary_key => :npi
	belongs_to :organization
end
