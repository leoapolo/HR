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

ActiveRecord::Schema.define(version: 20141028064053) do

  create_table "candidates", force: true do |t|
    t.date     "date_of_apply"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "city_of_birth"
    t.date     "date_of_birth"
    t.string   "country_of_birth"
    t.string   "current_location"
    t.string   "preferred_work_location"
    t.string   "preferred_contact_phone"
    t.string   "email"
    t.string   "language1"
    t.string   "language1_level"
    t.string   "language2"
    t.string   "language2_level"
    t.string   "language3"
    t.string   "language3_level"
    t.string   "language4"
    t.string   "language4_level"
    t.string   "language5"
    t.string   "language5_level"
    t.string   "language6"
    t.string   "language6_level"
    t.string   "language7"
    t.string   "language7_level"
    t.string   "language8"
    t.string   "language8_level"
    t.string   "language9"
    t.string   "language9_level"
    t.string   "language10"
    t.string   "language10_level"
    t.date     "education1_start_date"
    t.date     "education1_end_date"
    t.string   "univercity1"
    t.string   "major1"
    t.string   "education1_level"
    t.string   "note1"
    t.date     "education2_start_date"
    t.date     "education2_end_date"
    t.string   "univercity2"
    t.string   "major2"
    t.string   "education2_level"
    t.string   "note2"
    t.date     "education3_start_date"
    t.date     "education3_end_date"
    t.string   "univercity3"
    t.string   "major3"
    t.string   "education3_level"
    t.string   "note3"
    t.date     "education4_start_date"
    t.date     "education4_end_date"
    t.string   "univercity4"
    t.string   "major4"
    t.string   "education4_level"
    t.string   "note4"
    t.date     "education5_start_date"
    t.date     "education5_end_date"
    t.string   "univercity5"
    t.string   "major5"
    t.string   "education5_level"
    t.string   "note5"
    t.date     "work1_start_date"
    t.date     "work1_end_date"
    t.string   "company1"
    t.string   "title1"
    t.string   "work1_desc"
    t.date     "work2_start_date"
    t.date     "work2_end_date"
    t.string   "company2"
    t.string   "title2"
    t.string   "work2_desc"
    t.date     "work3_start_date"
    t.date     "work3_end_date"
    t.string   "company3"
    t.string   "title3"
    t.string   "work3_desc"
    t.date     "work4_start_date"
    t.date     "work4_end_date"
    t.string   "company4"
    t.string   "title4"
    t.string   "work4_desc"
    t.date     "work5_start_date"
    t.date     "work5_end_date"
    t.string   "company5"
    t.string   "title5"
    t.string   "work5_desc"
    t.string   "ex_merkler"
    t.string   "current_job_title"
    t.integer  "current_salary"
    t.integer  "expect_salary"
    t.string   "onboard_date"
    t.string   "self_assessment"
    t.string   "channel"
    t.string   "channel_detail"
    t.string   "referred_by"
    t.string   "req_position_title"
    t.string   "candidate_id"
    t.string   "field1"
    t.string   "field2"
    t.string   "field3"
    t.string   "field4"
    t.string   "field5"
    t.string   "field6"
    t.string   "field7"
    t.string   "field8"
    t.string   "field9"
    t.string   "field10"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "data_dictionaries", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "parent_code"
    t.integer  "del_flg"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "job_positions", force: true do |t|
    t.string   "title"
    t.string   "dept"
    t.integer  "opennum"
    t.text     "description"
    t.text     "requirement"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "job_positions", ["user_id", "created_at"], name: "index_job_positions_on_user_id_and_created_at"

  create_table "jobapps", force: true do |t|
    t.string   "title"
    t.string   "dept"
    t.integer  "num"
    t.text     "description"
    t.text     "requirement"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "merkle_users", force: true do |t|
    t.string   "user_name"
    t.string   "user_psd"
    t.string   "eng_name"
    t.string   "chn_name"
    t.string   "email"
    t.string   "bu"
    t.string   "location"
    t.string   "mgr"
    t.string   "position_title"
    t.string   "user_role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at"

  create_table "relationships", force: true do |t|
    t.integer  "user_id"
    t.integer  "jobapp_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "relationships", ["jobapp_id"], name: "index_relationships_on_jobapp_id"
  add_index "relationships", ["user_id", "jobapp_id"], name: "index_relationships_on_user_id_and_jobapp_id", unique: true
  add_index "relationships", ["user_id"], name: "index_relationships_on_user_id"

  create_table "requisitions", force: true do |t|
    t.string   "Req_ID"
    t.string   "Req_NO"
    t.string   "Position_title"
    t.string   "priority"
    t.string   "job_category"
    t.string   "OG"
    t.string   "Position_Level"
    t.string   "Location"
    t.integer  "Openings"
    t.string   "Account_information"
    t.string   "hiring_mgr"
    t.date     "job_posting_date"
    t.string   "approved_in_RMO_or_Not"
    t.date     "RMO_Open_Date"
    t.date     "preferred_onboard_date"
    t.string   "Biz_impact_details"
    t.string   "key_words"
    t.string   "cahnnel"
    t.string   "status"
    t.string   "open_to_candidate"
    t.string   "job_description"
    t.string   "desired_skills_and_experience"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
    t.boolean  "recruiter",       default: false
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
