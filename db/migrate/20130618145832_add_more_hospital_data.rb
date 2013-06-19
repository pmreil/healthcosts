class AddMoreHospitalData < ActiveRecord::Migration
  def change
    add_column :hospitals, :county, :string
    add_column :hospitals, :phone, :integer
    add_column :hospitals, :type, :string
    add_column :hospitals, :ownership, :string
    add_column :hospitals, :emergency, :bool
  end
end
