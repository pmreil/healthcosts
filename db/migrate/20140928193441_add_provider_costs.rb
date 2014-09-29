class AddProviderCosts < ActiveRecord::Migration
  def up

	change_column :hcpcs, :code, :string

	create_table :providers_costs do |t|
		t.integer :npi
		t.string :place_of_service
		t.string :hcpcs_code
		t.integer :line_srvc_cnt
		t.integer :bene_unique_cnt
		t.integer :bene_day_srvc_cnt
		t.integer :average_Medicare_allowed_amt
		t.integer :stdev_Medicare_allowed_amt
		t.integer :average_submitted_chrg_amt
		t.integer :stdev_submitted_chrg_amt
		t.integer :average_Medicare_payment_amt
		t.integer :stdev_Medicare_payment_amt 
      t.timestamps
    end  

  end

  def down
  end
end
