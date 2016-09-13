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

ActiveRecord::Schema.define(version: 20160913215412) do

  create_table "discoverables", force: :cascade do |t|
    t.string   "name"
    t.integer  "system_id"
    t.integer  "position"
    t.boolean  "discovered", default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "houses", force: :cascade do |t|
    t.string   "type"
    t.string   "name",        default: ""
    t.integer  "solar",       default: 50000
    t.decimal  "melange",     default: "5.0"
    t.integer  "research",    default: 2000
    t.decimal  "material",    default: "5000.0"
    t.integer  "influence",   default: 0
    t.text     "noticeboard", default: ""
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "playable",    default: false
  end

  create_table "systems", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "name"
    t.integer  "house_id"
    t.boolean  "admin",                  default: false
    t.boolean  "emperor",                default: false
    t.boolean  "regent",                 default: false
    t.boolean  "arrakis",                default: false
    t.boolean  "leader",                 default: false
    t.boolean  "mentat",                 default: false
    t.boolean  "landsraad",              default: false
    t.integer  "solar",                  default: 5000
    t.decimal  "melange",                default: "0.5"
    t.integer  "research",               default: 250
    t.integer  "influence",              default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
