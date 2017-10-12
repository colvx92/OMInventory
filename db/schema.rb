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

ActiveRecord::Schema.define(version: 20171012151804) do

  create_table "actual_recipe_reqs", force: :cascade do |t|
    t.integer "qty"
    t.integer "surgery_appt_id"
    t.integer "supply_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supply_list_id"], name: "index_actual_recipe_reqs_on_supply_list_id"
    t.index ["surgery_appt_id"], name: "index_actual_recipe_reqs_on_surgery_appt_id"
  end

  create_table "clinics", force: :cascade do |t|
    t.string "clinic_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.integer "qty"
    t.integer "clinic_id"
    t.integer "supply_list_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clinic_id"], name: "index_inventories_on_clinic_id"
    t.index ["supply_list_id"], name: "index_inventories_on_supply_list_id"
  end

  create_table "supply_lists", force: :cascade do |t|
    t.string "item_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "surgery_appts", force: :cascade do |t|
    t.date "surgery_date"
    t.integer "clinic_id"
    t.integer "surgery_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "complete", default: true
    t.index ["clinic_id"], name: "index_surgery_appts_on_clinic_id"
    t.index ["surgery_type_id"], name: "index_surgery_appts_on_surgery_type_id"
  end

  create_table "surgery_recipe_reqs", force: :cascade do |t|
    t.integer "qty"
    t.integer "supply_list_id"
    t.integer "surgery_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supply_list_id"], name: "index_surgery_recipe_reqs_on_supply_list_id"
    t.index ["surgery_type_id"], name: "index_surgery_recipe_reqs_on_surgery_type_id"
  end

  create_table "surgery_types", force: :cascade do |t|
    t.string "surgery_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
