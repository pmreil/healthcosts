# == Schema Information
#
# Table name: providers_costs
#
#  id                           :integer          not null, primary key
#  npi                          :integer
#  place_of_service             :string(255)
#  hcpcs_code                   :string(255)
#  line_srvc_cnt                :integer
#  bene_unique_cnt              :integer
#  bene_day_srvc_cnt            :integer
#  average_Medicare_allowed_amt :integer
#  stdev_Medicare_allowed_amt   :integer
#  average_submitted_chrg_amt   :integer
#  stdev_submitted_chrg_amt     :integer
#  average_Medicare_payment_amt :integer
#  stdev_Medicare_payment_amt   :integer
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#

class ProvidersCost < ActiveRecord::Base
	belongs_to :provider, :foreign_key => :npi_id, :primary_key => :npi
	belongs_to :hcpcs, :foreign_key => :hcpcs_code
end
