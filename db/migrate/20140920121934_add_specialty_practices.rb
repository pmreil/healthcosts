class AddSpecialtyPractices < ActiveRecord::Migration
  def up
	create_table :specialties do |t|
      t.string :name
      t.timestamps
    end

	create_table :providers_specialties, :id => false do |t|
	  t.references :npi, :null => false
	  t.references :specialty, :null => false
    end

	create_table :organizations do |t|
      t.string :name
      t.integer :pacid
      t.integer :members
      t.string	:address1
      t.string	:address2
      t.string	:city
      t.integer	:state_id
      t.timestamps
    end

	create_table :providers_organizations, :id => false do |t|
	  t.references :npi, :null => false
	  t.references :organization, :null => false
    end


  end

  def down
  end
end
