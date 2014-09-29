class AddAffilition < ActiveRecord::Migration
  def up

	create_table :providers_hospitals, :id => false do |t|
	  t.references :npi, :null => false
	  t.references :hospital, :null => false
    end

    add_column :specialties, :primary, :boolean

  end

  def down
  end
end
