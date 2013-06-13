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

ActiveRecord::Schema.define(:version => 20130613005951) do

  create_table "apc_costs", :force => true do |t|
    t.integer  "apc_code"
    t.integer  "hospital_ext_id"
    t.integer  "year"
    t.integer  "outpatient_services"
    t.integer  "average_estimated_submitted_charges"
    t.integer  "average_total_payment"
    t.integer  "position"
    t.integer  "count"
    t.float    "percentile"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
  end

  create_table "apcs", :force => true do |t|
    t.integer  "code"
    t.string   "description"
    t.integer  "average_estimated_submitted_charges"
    t.integer  "average_total_payments"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
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
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "abbrev"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
