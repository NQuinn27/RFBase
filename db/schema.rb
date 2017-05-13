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

ActiveRecord::Schema.define(version: 20170513131213) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
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
    t.index ["email"], name: "index_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "app_users", force: :cascade do |t|
    t.integer  "customer_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "device_token"
    t.string   "device_type"
    t.string   "push_token"
    t.string   "email"
    t.datetime "signup_date"
    t.datetime "last_login"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["customer_id"], name: "index_app_users_on_customer_id", using: :btree
  end

  create_table "bios", force: :cascade do |t|
    t.string   "photo"
    t.string   "name"
    t.date     "date_of_birth"
    t.text     "biography"
    t.integer  "customer_id"
    t.string   "facebook_url"
    t.string   "twitter_url"
    t.string   "instagram_url"
    t.string   "web_url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "lives"
    t.index ["customer_id"], name: "index_bios_on_customer_id", unique: true, using: :btree
  end

  create_table "bootsy_image_galleries", force: :cascade do |t|
    t.string   "bootsy_resource_type"
    t.integer  "bootsy_resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bootsy_images", force: :cascade do |t|
    t.string   "image_file"
    t.integer  "image_gallery_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "career_items", force: :cascade do |t|
    t.string   "year"
    t.text     "details"
    t.integer  "bio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bio_id"], name: "index_career_items_on_bio_id", using: :btree
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    limit: 30
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.index ["assetable_type", "assetable_id"], name: "idx_ckeditor_assetable", using: :btree
    t.index ["assetable_type", "type", "assetable_id"], name: "idx_ckeditor_assetable_type", using: :btree
  end

  create_table "customer_admins", force: :cascade do |t|
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
    t.integer  "customer_id"
    t.string   "first_name"
    t.string   "last_name"
    t.index ["email"], name: "index_customer_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_customer_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "customer_settings", force: :cascade do |t|
    t.text     "ios_push_cert"
    t.string   "ios_env"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "api_key"
    t.text     "ios_push_cert"
    t.string   "ios_environment"
  end

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.string   "caption"
    t.date     "date"
    t.string   "image"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "customer_id"
  end

  create_table "media_items", force: :cascade do |t|
    t.integer  "customer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image"
    t.string   "caption"
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "customer_id"
    t.string   "header_image"
    t.string   "icon_image"
    t.datetime "publish_date"
  end

  create_table "super_admins", force: :cascade do |t|
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
    t.index ["email"], name: "index_super_admins_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_super_admins_on_reset_password_token", unique: true, using: :btree
  end

  create_table "themes", force: :cascade do |t|
    t.string   "primary_color"
    t.string   "primary_inverse_color"
    t.string   "primary_font_color"
    t.string   "secondary_font_color"
    t.integer  "customer_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.index ["customer_id"], name: "index_themes_on_customer_id", unique: true, using: :btree
  end

  add_foreign_key "app_users", "customers"
  add_foreign_key "career_items", "bios"
end
