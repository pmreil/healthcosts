class CreateCosts < ActiveRecord::Migration
  def change
    create_table :costs do |t|
      t.integer :drg_code
      t.integer :hospital_ext_id
      t.integer :year
      t.integer :total_discharges
      t.integer :average_total_payment

      t.timestamps
    end
  end
end
