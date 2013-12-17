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

ActiveRecord::Schema.define(:version => 20131204233146) do

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

  create_table "apcs", :force => true do |t|
    t.integer  "code"
    t.string   "description"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.float    "avg_estimated_submitted_charges"
    t.float    "avg_total_payments"
  end

  create_table "costs", :force => true do |t|
    t.integer  "drg_code"
    t.integer  "hospital_ext_id"
    t.integer  "year"
    t.integer  "total_discharges"
    t.integer  "average_covered_charges"
    t.integer  "average_total_payments"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.integer  "position"
    t.integer  "count"
    t.float    "percentile"
  end

  create_table "drgs", :force => true do |t|
    t.integer  "code"
    t.string   "description"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.float    "avg_covered_charges"
    t.float    "avg_total_payments"
  end

  create_table "drgs_icd10s", :id => false, :force => true do |t|
    t.integer "drg_id",   :null => false
    t.integer "icd10_id", :null => false
  end

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

  create_table "icd10s", :force => true do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "metric_keys", :force => true do |t|
    t.integer  "metric_type"
    t.string   "metric_key"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

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

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "abbrev"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
