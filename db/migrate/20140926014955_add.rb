class Add < ActiveRecord::Migration
  def up

	create_table :organizations_addresses do |t|
      t.integer :pacid
      t.string	:address1
      t.string	:address2
      t.string	:city
      t.integer	:state_id
      t.integer :zipcode
      t.timestamps
    end

    create_table :hcpcs do |t|
      t.integer :code
      t.string :description
      t.timestamps
	end

    remove_column :organizations, :address1
    remove_column :organizations, :address2
    remove_column :organizations, :city
    remove_column :organizations, :state_id
    remove_column :organizations, :zipcode

  end

  def down
  end
end
