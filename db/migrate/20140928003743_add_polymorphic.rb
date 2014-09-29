class AddPolymorphic < ActiveRecord::Migration
  def up

    add_column :addresses, :addressable_id, :integer
    add_column :addresses, :addressable_type, :string


  end

  def down
  end
end
