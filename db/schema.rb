# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_25_223839) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "emails", force: :cascade do |t|
    t.string "email"
    t.bigint "person_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_emails_on_person_id"
  end

  create_table "networks", force: :cascade do |t|
    t.string "twitter"
    t.string "instagram"
    t.string "facebook"
    t.string "whatsapp"
    t.string "snapchat"
    t.string "discord"
    t.string "pinterest"
    t.string "apple"
    t.string "google"
    t.string "microsoft"
    t.string "mastodon"
    t.bigint "person_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_networks_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "user_name"
    t.string "nationality"
    t.string "birth_date"
    t.string "currently_working_as"
    t.string "currently_working_at"
    t.string "currently_living_in"
    t.boolean "is_privately_wanted"
    t.boolean "is_publicly_wanted"
    t.boolean "is_dangerous"
    t.string "gender"
    t.string "last_seen_date"
    t.string "last_seen_place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "emails", "people"
  add_foreign_key "networks", "people"
end
