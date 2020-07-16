# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2017_04_15_203400) do

  create_table "buildings", force: :cascade do |t|
    t.string "type"
    t.string "name", null: false
    t.string "description", default: ""
    t.decimal "population_bonus", precision: 12, scale: 4, default: "0.0"
    t.decimal "melange_bonus", precision: 12, scale: 4, default: "0.0"
    t.decimal "material_bonus", precision: 12, scale: 4, default: "0.0"
    t.decimal "solar_bonus", precision: 12, scale: 4, default: "0.0"
    t.decimal "exp_bonus", precision: 12, scale: 4, default: "0.0"
    t.decimal "population_cost", precision: 12, scale: 4, default: "0.0"
    t.decimal "melange_cost", precision: 12, scale: 4, default: "0.0"
    t.decimal "material_cost", precision: 12, scale: 4, default: "0.0"
    t.decimal "solar_cost", precision: 12, scale: 4, default: "0.0"
    t.decimal "exp_cost", precision: 12, scale: 4, default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "estates", force: :cascade do |t|
    t.integer "building_id"
    t.integer "field_id"
    t.integer "number", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fields", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "planet_id"
    t.integer "pos_x"
    t.integer "pos_y"
    t.decimal "population", precision: 12, scale: 4, default: "0.0"
    t.decimal "material", precision: 12, scale: 4, default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["planet_id"], name: "index_fields_on_planet_id"
    t.index ["user_id"], name: "index_fields_on_user_id"
  end

  create_table "globals", force: :cascade do |t|
    t.string "setting", null: false
    t.boolean "value"
    t.date "datum"
    t.string "slovo"
    t.decimal "cislo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "houses", force: :cascade do |t|
    t.string "type"
    t.string "name", default: ""
    t.string "leader", default: ""
    t.integer "solar", default: 50000
    t.decimal "melange", precision: 12, scale: 4, default: "5.0"
    t.integer "research", default: 2000
    t.decimal "material", precision: 12, scale: 4, default: "5000.0"
    t.integer "influence", default: 0
    t.text "noticeboard", default: ""
    t.decimal "melange_percent", precision: 12, scale: 4, default: "5.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "playable", default: false
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.integer "system_id"
    t.integer "position"
    t.datetime "discovered_at"
    t.integer "house_id"
    t.boolean "available_to_all"
    t.integer "fields_count", default: 0
    t.decimal "population_bonus", precision: 12, scale: 4, default: "0.0"
    t.decimal "material_bonus", precision: 12, scale: 4, default: "0.0"
    t.decimal "solar_bonus", precision: 12, scale: 4, default: "0.0"
    t.decimal "exp_bonus", precision: 12, scale: 4, default: "0.0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_planets_on_house_id"
    t.index ["name"], name: "index_planets_on_name"
    t.index ["system_id"], name: "index_planets_on_system_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.string "session_id", null: false
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_sessions_on_session_id", unique: true
    t.index ["updated_at"], name: "index_sessions_on_updated_at"
  end

  create_table "systems", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "house_id"
    t.boolean "admin", default: false
    t.boolean "emperor", default: false
    t.boolean "regent", default: false
    t.boolean "arrakis", default: false
    t.boolean "leader", default: false
    t.boolean "mentat", default: false
    t.boolean "landsraad", default: false
    t.integer "solar", default: 5000
    t.decimal "melange", default: "0.5"
    t.integer "research", default: 250
    t.integer "influence", default: 0
    t.string "username"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
