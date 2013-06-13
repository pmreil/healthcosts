class AddApc < ActiveRecord::Migration
  def change
    create_table :apcs do |t|
      t.integer :code
      t.string :description
      t.integer :average_estimated_submitted_charges
      t.integer :average_total_payments
      t.timestamps
    end
  end
end
