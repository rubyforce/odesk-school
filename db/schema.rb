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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150422225812) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "admissions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authentications", force: :cascade do |t|
    t.string   "provider",   null: false
    t.string   "uid",        null: false
    t.string   "email",      null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carrier_wave_files", force: :cascade do |t|
    t.string   "identifier"
    t.string   "original_filename"
    t.string   "content_type"
    t.string   "size"
    t.binary   "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cash_managements", force: :cascade do |t|
    t.decimal  "cash_opening"
    t.decimal  "cash_paid"
    t.decimal  "cash_in_hand"
    t.string   "cash_deposited"
    t.string   "cash_moved"
    t.decimal  "cash_closing"
    t.string   "remark"
    t.string   "expense_made"
    t.string   "nature_expense"
    t.string   "payment"
    t.string   "authorized_by"
    t.decimal  "amount"
    t.string   "expense_by"
    t.string   "month"
    t.string   "year"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "cash_deposited_enabled", default: false
    t.boolean  "cash_moved_enabled",     default: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "job_title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "gender",                         null: false
    t.text     "address"
    t.string   "middle_name"
    t.string   "qualification"
    t.decimal  "salary"
    t.string   "contact_no"
    t.string   "entry_no",      default: "auto"
    t.string   "status"
    t.string   "datetime"
    t.string   "paid_type"
    t.string   "section"
    t.string   "pay_band"
    t.string   "year"
    t.string   "salary_check"
    t.string   "remark"
    t.integer  "paid_type_id"
    t.integer  "section_id"
    t.integer  "pay_band_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string   "meal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "midday_managements", force: :cascade do |t|
    t.string   "month"
    t.string   "item_name"
    t.string   "ordered"
    t.string   "received"
    t.string   "vegetable"
    t.string   "cook"
    t.string   "date"
    t.string   "qty"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "paid_types", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pay_bands", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "religions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sections", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", using: :btree
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email",          default: "",     null: false
    t.string   "gender"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "entry_no",       default: "auto"
    t.integer  "group_no"
    t.string   "admission_date"
    t.string   "academic_year",  default: "auto"
    t.string   "father_name"
    t.string   "mother_name"
    t.string   "birth_place"
    t.string   "caste"
    t.string   "nationality"
    t.string   "standard"
    t.string   "division"
    t.string   "transport"
    t.string   "finance_mode"
    t.string   "remarks"
    t.string   "last_school"
    t.integer  "admission_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",        null: false
    t.string   "encrypted_password",     default: "",        null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "role"
    t.string   "status",                 default: "pending"
    t.string   "avatar"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "phone"
    t.string   "street"
    t.integer  "zip_code"
    t.string   "city"
    t.string   "country"
    t.string   "state"
    t.text     "short_bio"
    t.string   "facebook_link"
    t.string   "twitter_link"
    t.string   "google_plus_link"
    t.string   "linkedin_link"
    t.string   "social_avatar_url"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "facebook_avatar"
    t.string   "google_plus_avatar"
    t.string   "linkedin_avatar"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
