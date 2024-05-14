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

ActiveRecord::Schema[7.1].define(version: 2024_05_14_131044) do
  create_table "conversations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.integer "receiver_id"
    t.index ["user_id"], name: "index_conversations_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.integer "prebivalisca_id", null: false
    t.index ["prebivalisca_id"], name: "index_favorites_on_prebivalisca_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "text"
    t.boolean "read"
    t.date "timeSent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.integer "conversation_id", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "najemis", force: :cascade do |t|
    t.date "dat_najema"
    t.date "dat_konec_najema"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.integer "prebivalisca_id", null: false
    t.boolean "payed", default: false
    t.index ["prebivalisca_id"], name: "index_najemis_on_prebivalisca_id"
    t.index ["user_id"], name: "index_najemis_on_user_id"
  end

  create_table "prebivaliscas", force: :cascade do |t|
    t.string "Name"
    t.integer "rating", limit: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "kvadratura", default: 0, null: false
    t.integer "cena", default: 0, null: false
    t.text "description", default: "Brez opisa", null: false
    t.string "image", default: "Brez slik", null: false
    t.string "lokacija", default: "Brez javne lokacije", null: false
    t.integer "user_id", null: false
    t.index ["user_id"], name: "index_prebivaliscas_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ime", null: false
    t.string "priimek", null: false
    t.string "telefonska", null: false
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "conversations", "users"
  add_foreign_key "favorites", "prebivaliscas"
  add_foreign_key "favorites", "users"
  add_foreign_key "messages", "conversations"
  add_foreign_key "messages", "users"
  add_foreign_key "najemis", "prebivaliscas"
  add_foreign_key "najemis", "users"
  add_foreign_key "prebivaliscas", "users"
end
