class AddZip < ActiveRecord::Migration
  def up
    add_column :organizations, :zipcode, :integer
  end

  def down
  end
end
