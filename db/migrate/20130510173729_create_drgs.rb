class CreateDrgs < ActiveRecord::Migration
  def change
    create_table :drgs do |t|
      t.integer :code
      t.string :description

      t.timestamps
    end
  end
end
