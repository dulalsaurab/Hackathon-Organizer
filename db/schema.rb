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

ActiveRecord::Schema.define(version: 20180502210817) do

  create_table "custome_tables", force: :cascade do |t|
    t.string "question"
    t.string "answer"
    t.string "identifier"
    t.integer "identifier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hackathons", force: :cascade do |t|
    t.string "title"
    t.string "topic"
    t.text "description"
    t.string "owner"
    t.integer "number_of_participants"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "end_date"
    t.datetime "start_date"
    t.text "hackathon_venue"
    t.integer "user_id"
    t.string "is_private"
    t.string "twitter_link"
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.index ["user_id"], name: "index_hackathons_on_user_id"
  end

  create_table "proposals", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "hackathon_id"
    t.integer "cached_votes_total", default: 0
    t.integer "cached_votes_score", default: 0
    t.integer "cached_votes_up", default: 0
    t.integer "cached_votes_down", default: 0
    t.integer "cached_weighted_score", default: 0
    t.integer "cached_weighted_total", default: 0
    t.float "cached_weighted_average", default: 0.0
    t.index ["cached_votes_down"], name: "index_proposals_on_cached_votes_down"
    t.index ["cached_votes_score"], name: "index_proposals_on_cached_votes_score"
    t.index ["cached_votes_total"], name: "index_proposals_on_cached_votes_total"
    t.index ["cached_votes_up"], name: "index_proposals_on_cached_votes_up"
    t.index ["cached_weighted_average"], name: "index_proposals_on_cached_weighted_average"
    t.index ["cached_weighted_score"], name: "index_proposals_on_cached_weighted_score"
    t.index ["cached_weighted_total"], name: "index_proposals_on_cached_weighted_total"
    t.index ["hackathon_id"], name: "index_proposals_on_hackathon_id"
    t.index ["user_id"], name: "index_proposals_on_user_id"
  end

  create_table "registrations", force: :cascade do |t|
    t.integer "userId"
    t.integer "hackathon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["userId", "hackathon_id"], name: "index_registrations_on_userId_and_hackathon_id", unique: true
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["followed_id"], name: "index_relationships_on_followed_id"
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true
    t.index ["follower_id"], name: "index_relationships_on_follower_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string "keywords"
    t.string "topic"
    t.text "description"
    t.integer "owner"
    t.integer "number_of_participants"
    t.date "end_date"
    t.date "start_date"
    t.text "hackathon_venue"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "is_private"
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
    t.text "description"
  end

  create_table "votes", force: :cascade do |t|
    t.string "votable_type"
    t.integer "votable_id"
    t.string "voter_type"
    t.integer "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["votable_type", "votable_id"], name: "index_votes_on_votable_type_and_votable_id"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
    t.index ["voter_type", "voter_id"], name: "index_votes_on_voter_type_and_voter_id"
  end

end
