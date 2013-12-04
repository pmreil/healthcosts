class Icd10 < ActiveRecord::Base
  set_primary_key :code
  has_and_belongs_to_many :drgs


  def uc_description
  	uc = self.description.split(' ').map(&:capitalize).join(' ')
  	full = self.aliases.empty? ? uc : self.aliases.first.name + " (" + uc + ")"
    return full
  end


end
