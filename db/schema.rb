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

ActiveRecord::Schema.define(version: 20141018225903) do

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "agent_id"
    t.integer  "submission_id"
    t.integer  "proposal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["agent_id"], name: "index_accounts_on_agent_id"
  add_index "accounts", ["proposal_id"], name: "index_accounts_on_proposal_id"
  add_index "accounts", ["submission_id"], name: "index_accounts_on_submission_id"

  create_table "agents", force: true do |t|
    t.string   "contact"
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "account_id"
    t.integer  "submission_id"
    t.integer  "proposal_id"
    t.integer  "policy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "agents", ["account_id"], name: "index_agents_on_account_id"
  add_index "agents", ["policy_id"], name: "index_agents_on_policy_id"
  add_index "agents", ["proposal_id"], name: "index_agents_on_proposal_id"
  add_index "agents", ["submission_id"], name: "index_agents_on_submission_id"

  create_table "deductibles", force: true do |t|
    t.decimal  "spec_causes"
    t.string   "comp"
    t.string   "coll"
    t.integer  "submission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "deductibles", ["submission_id"], name: "index_deductibles_on_submission_id"

  create_table "details", force: true do |t|
    t.string   "make"
    t.string   "model"
    t.string   "year"
    t.decimal  "cost_new"
    t.string   "age_group"
    t.string   "territory"
    t.string   "size_class"
    t.string   "load_capacity"
    t.string   "fleet_nonfleet"
    t.string   "spec_causes"
    t.string   "gvw"
    t.string   "gcw"
    t.string   "business_use"
    t.string   "radius_class"
    t.integer  "risk_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "details", ["risk_id"], name: "index_details_on_risk_id"

  create_table "limits", force: true do |t|
    t.string   "bipd"
    t.string   "medical"
    t.integer  "submission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "limits", ["submission_id"], name: "index_limits_on_submission_id"

  create_table "policies", force: true do |t|
    t.string   "policy_no"
    t.integer  "submission_id"
    t.integer  "proposal_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "policies", ["proposal_id"], name: "index_policies_on_proposal_id"
  add_index "policies", ["submission_id"], name: "index_policies_on_submission_id"

  create_table "premia", force: true do |t|
    t.decimal  "comp_base"
    t.decimal  "coll_base"
    t.decimal  "otc_base"
    t.integer  "submission_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "premia", ["submission_id"], name: "index_premia_on_submission_id"

  create_table "private_passengers", force: true do |t|
    t.string   "territory"
    t.string   "age_group"
    t.decimal  "cost_new"
    t.string   "make"
    t.string   "model"
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proposals", force: true do |t|
    t.string   "proposal_no"
    t.integer  "submission_id"
    t.integer  "policy_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "proposals", ["policy_id"], name: "index_proposals_on_policy_id"
  add_index "proposals", ["submission_id"], name: "index_proposals_on_submission_id"

  create_table "risks", force: true do |t|
    t.string   "risk"
    t.integer  "premium"
    t.integer  "deductible"
    t.integer  "limit"
    t.integer  "submission_id"
    t.integer  "details_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "risks", ["details_id"], name: "index_risks_on_details_id"
  add_index "risks", ["submission_id"], name: "index_risks_on_submission_id"

  create_table "submissions", force: true do |t|
    t.string   "sub_no"
    t.string   "eff_date"
    t.string   "exp_date"
    t.integer  "agent_id"
    t.integer  "account_id"
    t.integer  "policy_id"
    t.integer  "proposal_id"
    t.integer  "risk_id"
    t.integer  "deductible_id"
    t.integer  "limit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "submissions", ["account_id"], name: "index_submissions_on_account_id"
  add_index "submissions", ["agent_id"], name: "index_submissions_on_agent_id"
  add_index "submissions", ["deductible_id"], name: "index_submissions_on_deductible_id"
  add_index "submissions", ["limit_id"], name: "index_submissions_on_limit_id"
  add_index "submissions", ["policy_id"], name: "index_submissions_on_policy_id"
  add_index "submissions", ["proposal_id"], name: "index_submissions_on_proposal_id"
  add_index "submissions", ["risk_id"], name: "index_submissions_on_risk_id"

  create_table "trailers", force: true do |t|
    t.string   "type"
    t.string   "territory"
    t.string   "radius_class"
    t.string   "year"
    t.decimal  "cost_new"
    t.string   "age_group"
    t.string   "load_capacity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trucks", force: true do |t|
    t.string   "type"
    t.string   "territory"
    t.string   "business_use"
    t.string   "fleet_nonfleet"
    t.string   "make"
    t.string   "year"
    t.decimal  "cost_new"
    t.string   "age_group"
    t.string   "size_class"
    t.string   "gvw"
    t.string   "gcw"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
