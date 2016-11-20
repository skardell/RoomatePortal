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

ActiveRecord::Schema.define(version: 20161120194214) do

  create_table "bills", force: :cascade do |t|
    t.string   "name"
    t.datetime "due_date"
    t.decimal  "cost"
    t.integer  "household_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["household_id"], name: "index_bills_on_household_id"
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
    t.index ["household_id"], name: "index_chores_on_household_id"
    t.index ["user_id"], name: "index_chores_on_user_id"
  end

  create_table "grocery_items", force: :cascade do |t|
    t.string   "name"
    t.integer  "grocery_list_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["grocery_list_id"], name: "index_grocery_items_on_grocery_list_id"
  end

  create_table "grocery_lists", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "household_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["household_id"], name: "index_grocery_lists_on_household_id"
    t.index ["user_id"], name: "index_grocery_lists_on_user_id"
  end

  create_table "household_users", force: :cascade do |t|
    t.integer  "household_id"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["household_id"], name: "index_household_users_on_household_id"
    t.index ["user_id"], name: "index_household_users_on_user_id"
  end

  create_table "households", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_bill_statuses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "bill_id"
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bill_id"], name: "index_user_bill_statuses_on_bill_id"
    t.index ["user_id"], name: "index_user_bill_statuses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.integer  "household_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["household_id"], name: "index_users_on_household_id"
  end

end
