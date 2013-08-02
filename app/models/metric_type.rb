# == Schema Information
#
# Table name: metric_types
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class MetricType < ActiveRecord::Base
  has_many :metric_keys
end
