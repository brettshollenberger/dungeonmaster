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

ActiveRecord::Schema.define(:version => 20130901002421) do

  create_table "character_classes", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "character_moves", :force => true do |t|
    t.integer  "character_id", :null => false
    t.integer  "move_id",      :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "characters", :force => true do |t|
    t.string   "first_name",                        :null => false
    t.string   "last_name",                         :null => false
    t.integer  "level",              :default => 1, :null => false
    t.integer  "experience",         :default => 0, :null => false
    t.integer  "user_id",                           :null => false
    t.datetime "created_at",                        :null => false
    t.datetime "updated_at",                        :null => false
    t.integer  "character_class_id",                :null => false
    t.integer  "strength",           :default => 0, :null => false
    t.integer  "height",                            :null => false
    t.integer  "weight",                            :null => false
    t.integer  "luck",               :default => 0, :null => false
    t.integer  "sex_appeal",         :default => 0, :null => false
    t.integer  "intelligence",       :default => 0, :null => false
    t.integer  "gold",               :default => 0, :null => false
    t.integer  "hp",                 :default => 6, :null => false
  end

  create_table "moves", :force => true do |t|
    t.string   "frequency",          :null => false
    t.string   "title",              :null => false
    t.text     "description"
    t.integer  "character_class_id"
    t.integer  "number_of_dice"
    t.integer  "dice_type"
    t.integer  "range",              :null => false
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "pets", :force => true do |t|
    t.string   "first_name",                  :null => false
    t.string   "last_name"
    t.integer  "hp",           :default => 6, :null => false
    t.integer  "character_id",                :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "strength",     :default => 0, :null => false
    t.integer  "luck",         :default => 0, :null => false
    t.integer  "intelligence", :default => 0, :null => false
    t.integer  "sex_appeal",   :default => 0, :null => false
    t.integer  "experience",   :default => 0, :null => false
    t.integer  "level",        :default => 1, :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "username",                               :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
