class Apc < ActiveRecord::Base
  set_primary_key :code
  #attr_accessible :code, :description
  has_many :apc_costs, :foreign_key => 'apc_code'

  def uc_description
    return self.description.split(' ').map(&:capitalize).join(' ')
  end


end
