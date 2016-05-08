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

ActiveRecord::Schema.define(version: 20160506230543) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "datalogs", force: :cascade do |t|
    t.integer  "tray_id"
    t.float    "ambcur"
    t.float    "ambmin"
    t.float    "ambmax"
    t.float    "folcur"
    t.float    "folmin"
    t.float    "folmax"
    t.float    "ph"
    t.float    "heatmat"
    t.float    "h202"
    t.float    "tds"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "datalogs", ["tray_id"], name: "index_datalogs_on_tray_id"

  create_table "grows", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
    t.integer  "user_id"
  end

  create_table "images", force: :cascade do |t|
    t.string   "file_id"
    t.integer  "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "tray_id"
  end

  add_index "images", ["plant_id"], name: "index_images_on_plant_id"

  create_table "pages", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pics", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "plantdats", force: :cascade do |t|
    t.float    "ambtemp"
    t.float    "foltempcur"
    t.float    "foltempmin"
    t.float    "foltempmax"
    t.float    "ph"
    t.float    "heatmat"
    t.integer  "tds"
    t.float    "h202"
    t.integer  "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "ambtempmin"
    t.float    "ambtembmax"
  end

  add_index "plantdats", ["plant_id"], name: "index_plantdats_on_plant_id"

  create_table "plants", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "species"
    t.integer  "tray_id"
    t.integer  "species_id"
  end

  add_index "plants", ["category_id"], name: "index_plants_on_category_id"
  add_index "plants", ["tray_id"], name: "index_plants_on_tray_id"

  create_table "species", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "plant_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "species", ["plant_id"], name: "index_species_on_plant_id"

  create_table "tasks", force: :cascade do |t|
    t.integer  "plant_id"
    t.integer  "tray_id"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "tasks", ["plant_id"], name: "index_tasks_on_plant_id"
  add_index "tasks", ["tray_id"], name: "index_tasks_on_tray_id"

  create_table "trays", force: :cascade do |t|
    t.string   "title"
    t.text     "notes"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_index "trays", ["category_id"], name: "index_trays_on_category_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "user_id"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
