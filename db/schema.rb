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

ActiveRecord::Schema.define(version: 20150716135140) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "organisation_id"
  end

  add_index "categories", ["organisation_id"], name: "index_categories_on_organisation_id", using: :btree

  create_table "category_organisations", force: :cascade do |t|
    t.integer  "organisation_id"
    t.integer  "category_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "category_organisations", ["category_id"], name: "index_category_organisations_on_category_id", using: :btree
  add_index "category_organisations", ["organisation_id"], name: "index_category_organisations_on_organisation_id", using: :btree

  create_table "organisations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "category_id"
  end

  add_index "organisations", ["category_id"], name: "index_organisations_on_category_id", using: :btree

  add_foreign_key "categories", "organisations"
  add_foreign_key "category_organisations", "categories"
  add_foreign_key "category_organisations", "organisations"
  add_foreign_key "organisations", "categories"
end
