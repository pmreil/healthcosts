# == Schema Information
#
# Table name: aliases
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  aliasable_id   :integer
#  aliasable_type :string(255)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#


class Alias < ActiveRecord::Base
  belongs_to :aliasable, :polymorphic => true
end
