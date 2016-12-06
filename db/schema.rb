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

ActiveRecord::Schema.define(version: 20161206233318) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bills", force: :cascade do |t|
    t.string   "name"
    t.datetime "due_date"
    t.decimal  "cost"
    t.integer  "household_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["household_id"], name: "index_bills_on_household_id", using: :btree
  end

  create_table "chores", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "household_id"
    t.datetime "deadline"
    t.string   "name"
    t.string   "status"
    t.integer  "assignee_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "description"
    t.index ["household_id"], name: "index_chores_on_household_id", using: :btree
    t.index ["user_id"], name: "index_chores_on_user_id", using: :btree
  end

  create_table "grocery_items", force: :cascade do |t|
    t.string   "name"
    t.integer  "grocery_list_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["grocery_list_id"], name: "index_grocery_items_on_grocery_list_id", using: :btree
  end

  create_table "grocery_lists", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "household_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["household_id"], name: "index_grocery_lists_on_household_id", using: :btree
    t.index ["user_id"], name: "index_grocery_lists_on_user_id", using: :btree
  end

  create_table "household_users", force: :cascade do |t|
    t.integer  "household_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["household_id"], name: "index_household_users_on_household_id", using: :btree
    t.index ["user_id"], name: "index_household_users_on_user_id", using: :btree
  end

  create_table "households", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "code"
  end

  create_table "user_bill_statuses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "bill_id"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_id"], name: "index_user_bill_statuses_on_bill_id", using: :btree
    t.index ["user_id"], name: "index_user_bill_statuses_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.integer  "household_id"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "code"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["household_id"], name: "index_users_on_household_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
