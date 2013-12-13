class DrgsIcd10 < ActiveRecord::Base
	belongs_to :drg
	belongs_to :icd10, :primary_key => :code
end
