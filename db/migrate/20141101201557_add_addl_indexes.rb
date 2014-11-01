class AddAddlIndexes < ActiveRecord::Migration
  def up
	add_index :addresses, :pac_id
  end

  def down
  end
end
