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

ActiveRecord::Schema.define(version: 2019_05_20_164552) do

  create_table "clan_members", force: :cascade do |t|
    t.integer "user_id"
    t.boolean "isLeager"
    t.boolean "acceptedInvite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_clan_members_on_user_id"
  end

  create_table "clans", force: :cascade do |t|
    t.string "name"
    t.date "deadline"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "habilities", force: :cascade do |t|
    t.string "name"
    t.float "dmgPercent"
    t.float "defPercent"
    t.float "maxHabilityLevel"
    t.float "minUserLevel"
    t.float "extraDmgPercent"
    t.float "extraDefPercent"
    t.float "levelsForUpgrade"
    t.string "habilityClass"
    t.string "habilitySubclass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "levels", force: :cascade do |t|
    t.float "maxLevel"
    t.float "baseExp"
    t.float "levelUpPercent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_groups", force: :cascade do |t|
    t.string "name"
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_sub_groups_on_group_id"
  end

  create_table "user_habilities", force: :cascade do |t|
    t.integer "user_id"
    t.integer "hability_id"
    t.float "habilityLevel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hability_id"], name: "index_user_habilities_on_hability_id"
    t.index ["user_id"], name: "index_user_habilities_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.string "email"
    t.date "dateOfBirth"
    t.integer "gender_id"
    t.float "level"
    t.integer "group_id"
    t.string "birthLocation"
    t.float "coins"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gender_id"], name: "index_users_on_gender_id"
    t.index ["group_id"], name: "index_users_on_group_id"
  end

end
