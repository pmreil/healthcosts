# == Schema Information
#
# Table name: drgs
#
#  id          :integer          not null
#  code        :integer          primary key
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Drg < ActiveRecord::Base
  set_primary_key :code
  #attr_accessible :code, :description
  has_many :costs, :foreign_key => 'drg_code'

  def uc_description
    return self.description.split(' ').map(&:capitalize).join(' ')
  end


end
