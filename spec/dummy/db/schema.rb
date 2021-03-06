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

ActiveRecord::Schema.define(version: 20150324220241) do

  create_table "subscriber_accounts", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "owner_id"
    t.string   "subdomain"
  end

  add_index "subscriber_accounts", ["subdomain"], name: "index_subscriber_accounts_on_subdomain"

  create_table "subscriber_members", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "organization_id"
  end

  add_index "subscriber_members", ["organization_id"], name: "index_subscriber_members_on_organization_id"

  create_table "subscriber_organizations", force: :cascade do |t|
    t.string   "org_type"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "owner_id"
    t.string   "industry"
    t.string   "city"
    t.string   "state"
    t.text     "description"
    t.string   "employees"
    t.string   "avatar"
  end

  add_index "subscriber_organizations", ["org_type"], name: "index_subscriber_organizations_on_org_type"
  add_index "subscriber_organizations", ["owner_id"], name: "index_subscriber_organizations_on_owner_id"

  create_table "subscriber_users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "organization_id"
    t.string   "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.string   "full_name"
  end

  add_index "subscriber_users", ["organization_id"], name: "index_subscriber_users_on_organization_id"

  create_table "things", force: :cascade do |t|
    t.string   "name"
    t.integer  "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
