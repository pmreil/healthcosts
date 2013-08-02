# == Schema Information
#
# Table name: drgs
#
#  id                  :integer          not null
#  code                :integer          primary key
#  description         :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avg_covered_charges :float
#  avg_total_payments  :float
#

class Drg < ActiveRecord::Base
  set_primary_key :code
  has_many :costs, :foreign_key => 'drg_code'
  has_many :aliases, :as => :aliasable


  def uc_description
  	uc = self.description.split(' ').map(&:capitalize).join(' ')
  	full = self.aliases.empty? ? uc : self.aliases.first.name + " (" + uc + ")"
    return full
  end


end
