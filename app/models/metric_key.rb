# == Schema Information
#
# Table name: metric_keys
#
#  id          :integer          not null, primary key
#  metric_type :integer
#  metric_key  :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


class MetricKey < ActiveRecord::Base
  belongs_to :metric_type, :foreign_key => "metric_type"
  has_many :metric_values
end
