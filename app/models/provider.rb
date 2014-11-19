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
  acts_as_indexed :fields => [:first_name, :last_name]

  scope :specialty, ->(specialty) { joins(:specialties).where('specialty_id = ?', specialty) }

#  scope :state_id, ->(state_id) do 
#    if self.organizations.count > 0
#      joins(:organizations).joins(:addresses).where("addresses.state_id = ?", state_id)
#    else
#      joins(:addresses).where("addresses.state_id = ?", state_id)
#    end
#  end

  has_many :providers_organizations, :foreign_key => :npi_id
  has_many :organizations, :through => :providers_organizations

  #has_many :addresses, as: :addressable
  has_many :addresses, through: :organizations

  has_many :providers_specialties, :foreign_key => :npi_id
  has_many :specialties, :through => :providers_specialties

  has_many :providers_hospitals, :foreign_key => :npi_id
  has_many :hospitals, :through => :providers_hospitals

  has_many :providers_costs, :foreign_key => :npi

  has_many :hcpcs, :through => :providers_costs

  def state_id(state_id)
    if self.organizations.count > 0
      self.joins(:organizations).joins(:addresses).where("addresses.state_id = ?", state_id)
    else
      self.joins(:addresses).where("addresses.state_id = ?", state_id)
    end
  end
end
