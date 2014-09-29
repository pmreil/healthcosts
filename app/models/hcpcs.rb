class Hcpcs < ActiveRecord::Base
  set_primary_key :code
  has_many :providers_costs, :foreign_key => 'hcpcs_code'
end
