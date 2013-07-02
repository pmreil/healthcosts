class AddAliasTable < ActiveRecord::Migration
  def change
    create_table :aliases do |t|
      t.string :name
      t.integer :aliasable_id
      t.string :aliasable_type
      t.timestamps
    end
  end
end
