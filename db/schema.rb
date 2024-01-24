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

ActiveRecord::Schema[7.0].define(version: 2024_01_24_050117) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "career_resources", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "url"
    t.bigint "career_step_id", null: false
    t.string "res_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["career_step_id"], name: "index_career_resources_on_career_step_id"
  end

  create_table "career_steps", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "step_number"
    t.string "video"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "career_users", force: :cascade do |t|
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
    t.bigint "career_step_id"
    t.string "name"
    t.string "batch"
    t.string "github_account"
    t.boolean "completed"
    t.boolean "admin"
    t.string "provider"
    t.string "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["career_step_id"], name: "index_career_users_on_career_step_id"
    t.index ["email"], name: "index_career_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_career_users_on_reset_password_token", unique: true
  end

  create_table "holobo_holograms", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "holobo_user_id", null: false
    t.string "video"
    t.string "background"
    t.string "depth_img"
    t.string "marker_pattern"
    t.string "qr_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["holobo_user_id"], name: "index_holobo_holograms_on_holobo_user_id"
  end

  create_table "holobo_markers", force: :cascade do |t|
    t.string "qrcode"
    t.string "pattern"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "holobo_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "nickname"
    t.string "bio"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_holobo_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_holobo_users_on_reset_password_token", unique: true
  end

  create_table "lw_cinema_movies", force: :cascade do |t|
    t.string "title"
    t.string "youtube_id"
    t.string "description"
    t.integer "batch"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "lw_cinema_project_category_id"
    t.index ["lw_cinema_project_category_id"], name: "index_lw_cinema_movies_on_lw_cinema_project_category_id"
  end

  create_table "lw_cinema_project_categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nanikiro_closets", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_nanikiro_closets_on_user_id"
  end

  create_table "nanikiro_todays_items", force: :cascade do |t|
    t.date "weared_on"
    t.bigint "nanikiro_wear_id", null: false
    t.bigint "nanikiro_closet_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nanikiro_closet_id"], name: "index_nanikiro_todays_items_on_nanikiro_closet_id"
    t.index ["nanikiro_wear_id"], name: "index_nanikiro_todays_items_on_nanikiro_wear_id"
  end

  create_table "nanikiro_wears", force: :cascade do |t|
    t.string "color"
    t.bigint "nanikiro_closet_id", null: false
    t.integer "wear_type"
    t.integer "season"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["nanikiro_closet_id"], name: "index_nanikiro_wears_on_nanikiro_closet_id"
  end

  create_table "recettes_de_mos_categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recettes_de_mos_countries", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recettes_de_mos_recipes", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.bigint "recettes_de_mos_country_id", null: false
    t.bigint "recettes_de_mos_category_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ingredient", default: [], array: true
    t.integer "prep_time"
    t.integer "cook_time"
    t.string "prep_step", default: [], array: true
    t.integer "guests_amount"
    t.index ["recettes_de_mos_category_id"], name: "index_recettes_de_mos_recipes_on_recettes_de_mos_category_id"
    t.index ["recettes_de_mos_country_id"], name: "index_recettes_de_mos_recipes_on_recettes_de_mos_country_id"
    t.index ["user_id"], name: "index_recettes_de_mos_recipes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.datetime "created_at", precision: nil, null: false
    t.datetime "updated_at", precision: nil, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "location"
    t.float "latitude"
    t.float "longitude"
    t.string "admin"
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "watch_with_style_bookmarks", force: :cascade do |t|
    t.string "comment"
    t.bigint "watch_with_style_movie_id", null: false
    t.bigint "watch_with_style_list_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["watch_with_style_list_id"], name: "index_watch_with_style_bookmarks_on_watch_with_style_list_id"
    t.index ["watch_with_style_movie_id"], name: "index_watch_with_style_bookmarks_on_watch_with_style_movie_id"
  end

  create_table "watch_with_style_lists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "watch_with_style_movies", force: :cascade do |t|
    t.string "title"
    t.string "overview"
    t.string "poster_url"
    t.string "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "career_resources", "career_steps"
  add_foreign_key "holobo_holograms", "holobo_users"
  add_foreign_key "lw_cinema_movies", "lw_cinema_project_categories"
  add_foreign_key "nanikiro_closets", "users"
  add_foreign_key "nanikiro_todays_items", "nanikiro_closets"
  add_foreign_key "nanikiro_todays_items", "nanikiro_wears"
  add_foreign_key "nanikiro_wears", "nanikiro_closets"
  add_foreign_key "recettes_de_mos_recipes", "recettes_de_mos_categories"
  add_foreign_key "recettes_de_mos_recipes", "recettes_de_mos_countries"
  add_foreign_key "recettes_de_mos_recipes", "users"
  add_foreign_key "watch_with_style_bookmarks", "watch_with_style_lists"
  add_foreign_key "watch_with_style_bookmarks", "watch_with_style_movies"
end
