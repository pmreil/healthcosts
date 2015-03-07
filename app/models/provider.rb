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
  #self.primary_key = "npi_id"

  scope :specialty, ->(specialty) { joins(:specialties).where('specialty_id = ?', specialty) }

  has_many :providers_organizations, :foreign_key => :npi_id
  has_many :organizations, :through => :providers_organizations

  #has_many :addresses, as: :addressable
  has_many :addresses, through: :organizations

  has_many :providers_specialties, :foreign_key => :npi_id
  has_many :specialties, :through => :providers_specialties

  has_many :providers_hospitals, :foreign_key => :npi_id
  has_many :hospitals, :through => :providers_hospitals

  has_many :providers_costs, :primary_key => :npi_id, :foreign_key => :npi_id

  has_many :hcpcs, :through => :providers_costs

  acts_as_indexed :fields => [:first_name, :last_name]

  def state_id(state_id)
    if self.organizations.count > 0
      self.joins(:organizations).joins(:addresses).where("addresses.state_id = ?", state_id)
    else
      self.joins(:addresses).where("addresses.state_id = ?", state_id)
    end
  end

  def cap_name
    name = self.first_name.capitalize + " " + self.last_name
    return name.split.map(&:capitalize).join(' ')
  end

end
