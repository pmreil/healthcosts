class AddProviderIndexes < ActiveRecord::Migration
  def change
    add_index :apcs, :code
    add_index :costs, :drg_code
    add_index :costs, :hospital_ext_id
    add_index :drgs, :code
    add_index :drgs_icd10s, :drg_id
    add_index :drgs_icd10s, :icd10_id
    add_index :hospitals, :ext_id
    add_index :icd10s, :code
    add_index :organizations, :pacid
    add_index :providers_hospitals, :npi_id
    add_index :providers_hospitals, :hospital_id
    add_index :providers_organizations, :npi_id
    add_index :providers_organizations, :organization_id
    add_index :providers_specialties, :npi_id
    add_index :providers_specialties, :specialty_id
  end
end
