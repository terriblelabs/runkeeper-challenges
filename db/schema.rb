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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110911181024) do

  create_table "challenges", :force => true do |t|
    t.date     "start_on"
    t.date     "end_on"
    t.integer  "reward"
    t.integer  "goal"
    t.text     "taunt"
    t.string   "challenger_token"
    t.string   "challenger_name"
    t.string   "challengee_name"
    t.string   "challengee_email"
    t.string   "challengee_token"
    t.string   "email_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "challenges", ["challengee_token"], :name => "index_challenges_on_challengee_token"
  add_index "challenges", ["challenger_token"], :name => "index_challenges_on_challenger_token"
  add_index "challenges", ["email_token"], :name => "index_challenges_on_email_token", :unique => true

end
