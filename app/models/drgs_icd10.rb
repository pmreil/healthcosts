# == Schema Information
#
# Table name: drgs_icd10s
#
#  drg_id   :integer          not null
#  icd10_id :string(16)       not null
#

class DrgsIcd10 < ActiveRecord::Base
	belongs_to :drg, :primary_key => :code
	belongs_to :icd10, :primary_key => :code
end
