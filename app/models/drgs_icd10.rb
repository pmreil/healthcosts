class DrgsIcd10 < ActiveRecord::Base
	belongs_to :drg, :primary_key => :code
	belongs_to :icd10, :primary_key => :code
end
