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

ActiveRecord::Schema.define(:version => 20140312154605) do

  create_table "active_admin_comments", :force => true do |t|
    t.string    "resource_id",   :null => false
    t.string    "resource_type", :null => false
    t.integer   "author_id"
    t.string    "author_type"
    t.text      "body"
    t.timestamp "created_at",    :null => false
    t.timestamp "updated_at",    :null => false
    t.string    "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string    "email",                  :default => "", :null => false
    t.string    "encrypted_password",     :default => "", :null => false
    t.string    "reset_password_token"
    t.timestamp "reset_password_sent_at"
    t.timestamp "remember_created_at"
    t.integer   "sign_in_count",          :default => 0
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.timestamp "created_at",                             :null => false
    t.timestamp "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "headshot_photos", :force => true do |t|
    t.string    "description"
    t.string    "image_file_name"
    t.string    "image_content_type"
    t.integer   "image_file_size"
    t.integer   "capturable_id"
    t.string    "capturable_type"
    t.timestamp "image_updated_at"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "jobs", :force => true do |t|
    t.string    "name"
    t.integer   "service_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "name_rus"
  end

  create_table "jobs_variants", :id => false, :force => true do |t|
    t.integer "job_id"
    t.integer "variant_id"
  end

  add_index "jobs_variants", ["job_id", "variant_id"], :name => "index_jobs_variants_on_job_id_and_variant_id"
  add_index "jobs_variants", ["variant_id"], :name => "index_jobs_variants_on_variant_id"

  create_table "orders", :force => true do |t|
    t.string    "name"
    t.string    "email"
    t.integer   "ticket_count"
    t.timestamp "created_at",                               :null => false
    t.timestamp "updated_at",                               :null => false
    t.string    "state",             :default => "pending"
    t.string    "express_token"
    t.string    "express_payer_id"
    t.string    "ip_address"
    t.text      "purchase_response"
  end

  create_table "people", :force => true do |t|
    t.string    "first_name"
    t.string    "last_name"
    t.string    "sex"
    t.date      "dob"
    t.string    "school_number"
    t.string    "school_type"
    t.string    "klass"
    t.integer   "headshot_photo_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "age"
  end

  create_table "people_variants", :id => false, :force => true do |t|
    t.integer "person_id"
    t.integer "variant_id"
  end

  add_index "people_variants", ["person_id", "variant_id"], :name => "index_people_variants_on_person_id_and_variant_id"
  add_index "people_variants", ["variant_id"], :name => "index_people_variants_on_variant_id"

  create_table "questions", :force => true do |t|
    t.text      "text"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.text      "text_rus"
  end

  create_table "services", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.string    "name_rus"
  end

  create_table "tickets", :force => true do |t|
    t.integer   "order_id"
    t.string    "type"
    t.timestamp "created_at", :null => false
    t.timestamp "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string    "email",                  :default => "", :null => false
    t.string    "encrypted_password",     :default => "", :null => false
    t.string    "reset_password_token"
    t.timestamp "reset_password_sent_at"
    t.timestamp "remember_created_at"
    t.integer   "sign_in_count",          :default => 0
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "variants", :force => true do |t|
    t.text      "text"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "question_id"
    t.text      "text_rus"
  end

end
