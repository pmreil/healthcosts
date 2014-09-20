# == Schema Information
#
# Table name: providers
#
#  id                                       :integer          not null
#  npi                                      :integer          primary key
#  pacid                                    :string(255)
#  professional_enrollment_id               :string(255)
#  last_name                                :string(255)
#  first_name                               :string(255)
#  middle_name                              :string(255)
#  suffix                                   :string(255)
#  gender                                   :string(255)
#  credential                               :string(255)
#  medical_school_name                      :string(255)
#  graduation_year                          :integer
#  professional_accepts_medicare_assignment :boolean
#  participating_in_erx                     :boolean
#  participating_in_pqrs                    :boolean
#  participating_in_ehr                     :boolean
#  created_at                               :datetime         not null
#  updated_at                               :datetime         not null
#

class Provider < ActiveRecord::Base
  set_primary_key :npi
  #has_many :costs, :foreign_key => 'drg_code'

  #has_and_belongs_to_many :icd10s, :uniq => true
  has_many :providers_organizations, :foreign_key => :npi_id
  has_many :organizations, :through => :providers_organizations

end
