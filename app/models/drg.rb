# == Schema Information
#
# Table name: drgs
#
#  id          :integer          not null, primary key
#  code        :integer
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Drg < ActiveRecord::Base
  attr_accessible :code, :description
end
