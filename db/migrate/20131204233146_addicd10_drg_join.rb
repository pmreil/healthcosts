class Addicd10DrgJoin < ActiveRecord::Migration
  def change
	create_table :drgs_icd10s, :id => false do |t|
	  t.references :drg, :null => false
	  t.references :icd10, :null => false
    end
  end
end
