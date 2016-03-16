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

ActiveRecord::Schema.define(version: 20160316173551) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
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
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "credit_card_id"
    t.integer  "reward_rate_id"
  end

  create_table "credit_cards", force: :cascade do |t|
    t.string   "name"
    t.string   "card_art"
    t.string   "issuer"
    t.integer  "annual_fee"
    t.integer  "standard_reward_rate"
    t.integer  "signup_bonus"
    t.text     "details"
    t.string   "regular_purchase_apr"
    t.string   "intro_purchase_apr"
    t.string   "intro_bt_apr"
    t.string   "credit_needed"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "signup_reward_id"
  end

  add_index "credit_cards", ["signup_reward_id"], name: "index_credit_cards_on_signup_reward_id"

  create_table "reward_rates", force: :cascade do |t|
    t.float    "percent"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "credit_card_id"
    t.integer  "category_id"
  end

  add_index "reward_rates", ["category_id"], name: "index_reward_rates_on_category_id"
  add_index "reward_rates", ["credit_card_id"], name: "index_reward_rates_on_credit_card_id"

  create_table "signup_rewards", force: :cascade do |t|
    t.integer  "amount"
    t.integer  "spend_requirement"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "reward_type"
    t.integer  "value"
    t.integer  "time_limit"
    t.string   "time_type"
    t.integer  "value_travel"
  end

end
