# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_09_213905) do

  create_table "event_planners", force: :cascade do |t|
    t.string "name"
    t.string "picture"
    t.string "description"
    t.integer "star_rating"
    t.string "specialty"
  end

  create_table "events", force: :cascade do |t|
    t.string "location"
    t.string "date"
    t.string "event_name"
    t.integer "user_id", null: false
    t.integer "event_planner_id", null: false
    t.index ["event_planner_id"], name: "index_events_on_event_planner_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "picture"
  end

  add_foreign_key "events", "event_planners"
  add_foreign_key "events", "users"
end
