class AddMoreIndexes < ActiveRecord::Migration
  def up
    add_index :apc_costs, :apc_code
    add_index :apc_costs, :hospital_ext_id
	add_index :metric_keys, :metric_type
	add_index :metric_keys, :metric_key
	add_index :metric_values, :hospital_ext_id
	add_index :metric_values, :metric_key_id
	add_index :organizations_addresses, :organization_id_id
	add_index :organizations_addresses, :address_id_id
	add_index :providers_costs, :npi
	add_index :providers_costs, :hcpcs_code
  end

  def down
  end
end
