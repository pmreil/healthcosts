# == Schema Information
#
# Table name: apcs
#
#  id                              :integer          not null
#  code                            :integer          primary key
#  description                     :string(255)
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#  avg_estimated_submitted_charges :float
#  avg_total_payments              :float
#

class Apc < ActiveRecord::Base
  #set_primary_key :code
  self.primary_key = "code"
  #attr_accessible :code, :description
  has_many :apc_costs, :foreign_key => 'apc_code'
  has_many :aliases, :as => :aliasable

  def uc_description
    return self.description.split(' ').map(&:capitalize).join(' ')
  end


end
