class AddAddlIndexes < ActiveRecord::Migration
  def up
	add_index :addresses, :pacid
  end

  def down
  end
end
