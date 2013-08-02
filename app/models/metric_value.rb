# == Schema Information
#
# Table name: metric_values
#
#  id              :integer          not null, primary key
#  hospital_ext_id :integer
#  metric_key_id   :integer
#  value           :string(255)
#  sample_size     :string(255)
#  response_rate   :string(255)
#  footnote        :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#


class MetricValue < ActiveRecord::Base
  belongs_to :hospital, :foreign_key => "hospital_ext_id"
  belongs_to :metric_key
end
