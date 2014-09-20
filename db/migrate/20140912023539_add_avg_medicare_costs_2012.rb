class AddAvgMedicareCosts2012 < ActiveRecord::Migration
  def change
    add_column :costs, :average_medicare_payments, :integer
  end
end
