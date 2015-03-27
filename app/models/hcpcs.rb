# == Schema Information
#
# Table name: hcpcs
#
#  id          :integer          not null
#  code        :string(255)      primary key
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Hcpcs < ActiveRecord::Base
  set_primary_key :code
  has_many :providers_costs, :foreign_key => 'hcpcs_code'


  def uc_description
  	return self.description.split(' ').map(&:capitalize).join(' ')
  end


end
