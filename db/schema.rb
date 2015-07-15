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

ActiveRecord::Schema.define(version: 20150715180737) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "page_element_links", force: :cascade do |t|
    t.integer  "web_page_id"
    t.string   "key"
    t.string   "text"
    t.string   "link"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "page_element_texts", force: :cascade do |t|
    t.integer  "web_page_id"
    t.string   "key"
    t.text     "value"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "question_en"
    t.text     "answer_en"
    t.integer  "service_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "question_fr"
    t.text     "answer_fr"
  end

  create_table "service_images", force: :cascade do |t|
    t.string   "alt_text"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string   "title_en"
    t.text     "short_info_en"
    t.text     "body_en"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "font_class"
    t.integer  "order"
    t.text     "body_fr",       default: ""
    t.string   "title_fr",      default: ""
    t.string   "short_info_fr", default: ""
  end

  create_table "settings", force: :cascade do |t|
    t.string   "key"
    t.text     "value"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "pretty_name"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "first_name",             default: ""
    t.string   "last_name",              default: ""
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "web_pages", force: :cascade do |t|
    t.string   "key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
