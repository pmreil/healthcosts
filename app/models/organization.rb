# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  pacid      :integer
#  members    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  zipcode    :integer
#

class Organization < ActiveRecord::Base

  #has_and_belongs_to_many :drgs, :uniq => true
  has_many :providers_organizations
  has_many :providers, :through => :providers_organizations

  #has_many :addresses, as: :addressable
  has_many :addresses, :primary_key => :pacid, :foreign_key => :pacid


end
