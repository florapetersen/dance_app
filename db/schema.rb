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

ActiveRecord::Schema.define(version: 20201113202735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "class_registrations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "dance_class_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "injuries"
    t.string   "preferred_pronouns"
    t.string   "last_name"
    t.string   "first_name"
    t.index ["dance_class_id"], name: "index_class_registrations_on_dance_class_id", using: :btree
    t.index ["user_id"], name: "index_class_registrations_on_user_id", using: :btree
  end

  create_table "dance_classes", force: :cascade do |t|
    t.string   "name"
    t.integer  "style_id"
    t.integer  "studio_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "day_id"
    t.string   "duration"
    t.datetime "start_time"
    t.index ["day_id"], name: "index_dance_classes_on_day_id", using: :btree
    t.index ["studio_id"], name: "index_dance_classes_on_studio_id", using: :btree
    t.index ["style_id"], name: "index_dance_classes_on_style_id", using: :btree
    t.index ["user_id"], name: "index_dance_classes_on_user_id", using: :btree
  end

  create_table "days", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "studios", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.index ["user_id"], name: "index_studios_on_user_id", using: :btree
  end

  create_table "styles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "phone_number"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "injuries"
    t.string   "preferred_pronouns"
    t.string   "full_name"
    t.string   "avatar_url"
    t.string   "uid"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
