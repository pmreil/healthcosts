class AddAverages < ActiveRecord::Migration
  def up
    add_column :drgs, :avg_covered_charges, :float
    add_column :drgs, :avg_total_payments, :float

  end

  def down
  end
end
