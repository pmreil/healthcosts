# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150118153039) do

  create_table "addresses", :force => true do |t|
    t.integer  "pacid",            :limit => 8
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.integer  "state_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "zipcode"
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.float    "latitude"
    t.float    "longitude"
  end

  add_index "addresses", ["addressable_id"], :name => "index_addresses_on_addressable_id"
  add_index "addresses", ["addressable_type"], :name => "index_addresses_on_addressable_type"
  add_index "addresses", ["pacid"], :name => "address_pacid"

  create_table "aliases", :force => true do |t|
    t.string   "name"
    t.integer  "aliasable_id"
    t.string   "aliasable_type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "apc_costs", :force => true do |t|
    t.integer  "apc_code"
    t.integer  "hospital_ext_id"
    t.integer  "year"
    t.integer  "outpatient_services"
    t.integer  "average_estimated_submitted_charges"
    t.integer  "average_total_payments"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.integer  "position"
    t.integer  "count"
    t.float    "percentile"
  end

  add_index "apc_costs", ["apc_code"], :name => "index_apc_costs_on_apc_code"
  add_index "apc_costs", ["hospital_ext_id"], :name => "index_apc_costs_on_hospital_ext_id"

  create_table "apcs", :force => true do |t|
    t.integer  "code"
    t.string   "description"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.float    "avg_estimated_submitted_charges"
    t.float    "avg_total_payments"
  end

  add_index "apcs", ["code"], :name => "index_apcs_on_code"

  create_table "costs", :force => true do |t|
    t.integer  "drg_code"
    t.integer  "hospital_ext_id"
    t.integer  "year"
    t.integer  "total_discharges"
    t.integer  "average_covered_charges"
    t.integer  "average_total_payments"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.integer  "position"
    t.integer  "count"
    t.float    "percentile"
    t.integer  "average_medicare_payments"
  end

  add_index "costs", ["drg_code"], :name => "index_costs_on_drg_code"
  add_index "costs", ["hospital_ext_id"], :name => "index_costs_on_hospital_ext_id"

  create_table "drgs", :force => true do |t|
    t.integer  "code"
    t.string   "description"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.float    "avg_covered_charges"
    t.float    "avg_total_payments"
  end

  add_index "drgs", ["code"], :name => "index_drgs_on_code"

  create_table "drgs_icd10s", :id => false, :force => true do |t|
    t.integer "drg_id",                 :null => false
    t.string  "icd10_id", :limit => 16, :null => false
  end

  add_index "drgs_icd10s", ["drg_id"], :name => "index_drgs_icd10s_on_drg_id"
  add_index "drgs_icd10s", ["icd10_id"], :name => "index_drgs_icd10s_on_icd10_id"

  create_table "hcpcs", :force => true do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "hcpcs", ["code"], :name => "index_hcpcs_on_code"

  create_table "hospitals", :force => true do |t|
    t.integer  "ext_id"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "referral_region"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.float    "latitude"
    t.float    "longitude"
    t.string   "county"
    t.integer  "phone"
    t.string   "hospital_type"
    t.string   "ownership"
    t.boolean  "emergency"
  end

  add_index "hospitals", ["ext_id"], :name => "index_hospitals_on_ext_id"

  create_table "icd10s", :force => true do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "icd10s", ["code"], :name => "code_UNIQUE", :unique => true
  add_index "icd10s", ["code"], :name => "index_icd10s_on_code"

  create_table "metric_keys", :force => true do |t|
    t.integer  "metric_type"
    t.string   "metric_key"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "metric_keys", ["metric_key"], :name => "index_metric_keys_on_metric_key"
  add_index "metric_keys", ["metric_type"], :name => "index_metric_keys_on_metric_type"

  create_table "metric_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "metric_values", :force => true do |t|
    t.integer  "hospital_ext_id"
    t.integer  "metric_key_id"
    t.string   "value"
    t.string   "sample_size"
    t.string   "response_rate"
    t.string   "footnote"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "metric_values", ["hospital_ext_id"], :name => "index_metric_values_on_hospital_ext_id"
  add_index "metric_values", ["metric_key_id"], :name => "index_metric_values_on_metric_key_id"

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.integer  "pacid",      :limit => 8
    t.integer  "members"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "zipcode"
  end

  add_index "organizations", ["pacid"], :name => "index_organizations_on_pacid"
  add_index "organizations", ["pacid"], :name => "pac_o"
  add_index "organizations", ["pacid"], :name => "pac_o2"

  create_table "organizations_addresses", :id => false, :force => true do |t|
    t.integer "organization_id_id", :null => false
    t.integer "address_id_id",      :null => false
  end

  add_index "organizations_addresses", ["address_id_id"], :name => "index_organizations_addresses_on_address_id_id"
  add_index "organizations_addresses", ["organization_id_id"], :name => "index_organizations_addresses_on_organization_id_id"

  create_table "providers", :force => true do |t|
    t.integer  "npi"
    t.string   "pacid"
    t.string   "professional_enrollment_id"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "suffix"
    t.string   "gender"
    t.string   "credential"
    t.string   "medical_school_name"
    t.integer  "graduation_year"
    t.boolean  "professional_accepts_medicare_assignment"
    t.boolean  "participating_in_erx"
    t.boolean  "participating_in_pqrs"
    t.boolean  "participating_in_ehr"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  add_index "providers", ["npi"], :name => "index_providers_on_npi", :unique => true

  create_table "providers_costs", :force => true do |t|
    t.integer  "npi"
    t.string   "place_of_service"
    t.string   "hcpcs_code"
    t.integer  "line_srvc_cnt"
    t.integer  "bene_unique_cnt"
    t.integer  "bene_day_srvc_cnt"
    t.integer  "average_Medicare_allowed_amt"
    t.integer  "stdev_Medicare_allowed_amt"
    t.integer  "average_submitted_chrg_amt"
    t.integer  "stdev_submitted_chrg_amt"
    t.integer  "average_Medicare_payment_amt"
    t.integer  "stdev_Medicare_payment_amt"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "providers_costs", ["hcpcs_code"], :name => "index_providers_costs_on_hcpcs_code"
  add_index "providers_costs", ["npi"], :name => "index_providers_costs_on_npi"

  create_table "providers_hospitals", :id => false, :force => true do |t|
    t.integer "npi_id",      :null => false
    t.integer "hospital_id", :null => false
  end

  add_index "providers_hospitals", ["hospital_id"], :name => "index_providers_hospitals_on_hospital_id"
  add_index "providers_hospitals", ["npi_id"], :name => "index_providers_hospitals_on_npi_id"

  create_table "providers_organizations", :id => false, :force => true do |t|
    t.integer "npi_id",          :null => false
    t.integer "organization_id", :null => false
  end

  add_index "providers_organizations", ["npi_id"], :name => "index_providers_organizations_on_npi_id"
  add_index "providers_organizations", ["organization_id"], :name => "index_providers_organizations_on_organization_id"

  create_table "providers_specialties", :id => false, :force => true do |t|
    t.integer "npi_id",       :null => false
    t.integer "specialty_id", :null => false
    t.boolean "primary_flag"
  end

  add_index "providers_specialties", ["npi_id"], :name => "index_providers_specialties_on_npi_id"
  add_index "providers_specialties", ["specialty_id"], :name => "index_providers_specialties_on_specialty_id"

  create_table "specialties", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "abbrev"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
