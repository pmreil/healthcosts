# == Schema Information
#
# Table name: organizations
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  pacid      :integer
#  members    :integer
#  address1   :string(255)
#  address2   :string(255)
#  city       :string(255)
#  state_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Organization < ActiveRecord::Base
  #has_and_belongs_to_many :drgs, :uniq => true
  has_many :providers_organizations
  has_many :providers, :through => :providers_organizations

end
