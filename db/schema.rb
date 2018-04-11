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

ActiveRecord::Schema.define(version: 20180410233232) do

  create_table "hackathons", force: :cascade do |t|
    t.string "title"
    t.string "topic"
    t.text "description"
    t.integer "owner"
    t.integer "number_of_participants"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "end_date"
    t.datetime "start_date"
    t.text "hackathon_venue"
    t.integer "user_id"
    t.index ["user_id"], name: "index_hackathons_on_user_id"
  end

  create_table "proposals", force: :cascade do |t|
    t.integer "userId"
    t.string "title"
    t.integer "hkId"
    t.text "description"
    t.text "customForm"
    t.integer "votes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.integer "userId"
    t.integer "HkId"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "user_name"
    t.string "email"
    t.string "passworld"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.string "password_digest"
    t.string "remember_me"
  end

end
