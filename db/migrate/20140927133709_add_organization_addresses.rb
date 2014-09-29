class AddOrganizationAddresses < ActiveRecord::Migration
  def up

  	rename_table :organizations_addresses, :addresses

	create_table :organizations_addresses, :id => false do |t|
	  t.references :organization_id, :null => false
	  t.references :address_id, :null => false
    end


  end

  def down
  end
end
