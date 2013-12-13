# == Schema Information
#
# Table name: icd10s
#
#  id          :integer          not null
#  code        :string(255)      primary key
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Icd10 < ActiveRecord::Base
  #set_primary_key :code

  acts_as_indexed :fields => [:code, :description]

  #has_and_belongs_to_many :drgs, :uniq => true
  has_many :drgs_icd10s
  has_many :drgs, :through => :drgs_icd10s

  def uc_description
  	uc = self.description.split(' ').map(&:capitalize).join(' ')
  	full = self.aliases.empty? ? uc : self.aliases.first.name + " (" + uc + ")"
    return full
  end

end
