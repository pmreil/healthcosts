class AddApcCosts < ActiveRecord::Migration
  def change
    create_table :apc_costs do |t|
      t.integer :apc_code
      t.integer :hospital_ext_id
      t.integer :year
      t.integer :outpatient_services
      t.integer :average_estimated_submitted_charges
      t.integer :average_total_payment
      t.integer :position
      t.integer :count
      t.float		:percentile
      t.timestamps
    end
  end
end
