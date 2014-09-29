class ProvidersCost < ActiveRecord::Base
	belongs_to :provider
	belongs_to :hcpcs
end
