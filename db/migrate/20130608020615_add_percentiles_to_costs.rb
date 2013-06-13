class AddPercentilesToCosts < ActiveRecord::Migration
  def change
    add_column :costs, :position, :integer
    add_column :costs, :count, :integer
    add_column :costs, :percentile, :float
  end
end
