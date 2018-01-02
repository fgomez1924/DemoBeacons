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

ActiveRecord::Schema.define(version: 20171107130555) do

  create_table "articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "beacon", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "fechaentrada", limit: 30, null: false
  end

  create_table "beacons", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
  end

  create_table "comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "commenter"
    t.text "body"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

  create_table "database_structures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
  end

  create_table "posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "title"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prueba", id: :integer, unsigned: true, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
  end

  create_table "users", primary_key: "uid", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "unique_id", limit: 23, null: false
    t.string "name", limit: 50, null: false
    t.string "email", limit: 100, null: false
    t.string "encrypted_password", limit: 80, null: false
    t.string "salt", limit: 10, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], name: "email", unique: true
    t.index ["unique_id"], name: "unique_id", unique: true
  end

  add_foreign_key "comments", "posts"
end
