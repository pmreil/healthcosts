class FixCostsColumns < ActiveRecord::Migration
  def up
  	rename_column :costs, :average_total_payment, :average_total_payments
  	add_column :costs, :average_covered_charges, :integer
  end

  def down
  end
end
