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

ActiveRecord::Schema.define(:version => 20140128011549) do

  create_table "item_attribute_values", :force => true do |t|
    t.integer  "item_category_attribute_id"
    t.integer  "item_id"
    t.boolean  "ifv_boolean"
    t.float    "ifv_float"
    t.integer  "ifv_integer"
    t.string   "ifv_string"
    t.text     "ifv_text"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "item_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "item_category_attribute_data_types", :force => true do |t|
    t.string   "label"
    t.string   "rails_data_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "item_category_attributes", :force => true do |t|
    t.integer  "item_category_id"
    t.string   "label"
    t.integer  "item_category_attribute_data_type_id"
    t.datetime "created_at",                           :null => false
    t.datetime "updated_at",                           :null => false
  end

  create_table "items", :force => true do |t|
    t.integer  "item_category_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
