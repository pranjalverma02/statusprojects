# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110707022428) do

  create_table "amcs", :force => true do |t|
    t.string   "name"
    t.string   "work_firm"
    t.string   "cost"
    t.string   "period"
    t.text     "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "report_date"
  end

  create_table "fields", :force => true do |t|
    t.string   "name"
    t.string   "existing_nos"
    t.string   "change_in_nos"
    t.string   "availability_percentage"
    t.string   "downtime_hrs"
    t.string   "report_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itismgmtfinals", :force => true do |t|
    t.string   "name"
    t.string   "existing_nos"
    t.string   "change_in_nos"
    t.string   "availability_percentage"
    t.string   "downtime_hrs"
    t.string   "report_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "itismgmts", :force => true do |t|
    t.string   "name"
    t.string   "existing_nos"
    t.string   "nos_deleted"
    t.string   "nos_added"
    t.string   "total"
    t.string   "report_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "maintenanceoffices", :force => true do |t|
    t.string   "name"
    t.string   "existing_nos"
    t.string   "change_in_nos"
    t.string   "availablity_percentage"
    t.string   "downtime_hrs"
    t.string   "report_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "offices", :force => true do |t|
    t.string   "name"
    t.string   "existing_nos"
    t.string   "nos_deleted"
    t.string   "nos_added"
    t.string   "total"
    t.string   "report_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "others", :force => true do |t|
    t.string   "name"
    t.text     "status"
    t.string   "report_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "procurements", :force => true do |t|
    t.string   "name"
    t.string   "item_description"
    t.string   "pr_no"
    t.decimal  "amount"
    t.text     "status"
    t.string   "report_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "statusprojects", :force => true do |t|
    t.string   "name"
    t.string   "cost"
    t.string   "award_date"
    t.string   "schd_date_of_compl"
    t.text     "progress"
    t.string   "report_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trainings", :force => true do |t|
    t.string   "name"
    t.string   "work_firm"
    t.string   "nos"
    t.string   "report_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
