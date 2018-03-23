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

ActiveRecord::Schema.define(version: 20180323180446) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "social_media", force: :cascade do |t|
    t.string "twitter"
    t.string "github"
    t.string "instagram"
    t.string "youtube"
    t.string "facebook"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_id"
    t.string "bitcoin"
    t.string "ethereum"
    t.string "steam"
    t.string "pinterest"
    t.string "medium"
    t.string "reddit"
    t.string "hackernews"
    t.string "keybase"
    t.string "flickr"
    t.string "twitch"
    t.string "googleplus"
    t.string "snapchat"
    t.string "angel"
    t.string "linkedin"
    t.string "devpost"
    t.string "devto"
    t.string "origin"
    t.string "discord"
    t.string "whatsapp"
    t.string "messenger"
    t.string "paypal"
    t.string "tumblr"
    t.index ["id"], name: "index_social_media_on_id"
    t.index ["user_id"], name: "index_social_media_on_user_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
