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

ActiveRecord::Schema.define(version: 2020_08_06_022617) do

  create_table "active_admin_comments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", default: -> { "current_timestamp()" }, null: false
    t.datetime "updated_at", default: -> { "current_timestamp()" }, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "banners", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "hinhanh"
    t.datetime "created_at", default: -> { "current_timestamp()" }, null: false
    t.datetime "updated_at", default: -> { "current_timestamp()" }, null: false
  end

  create_table "ctdhs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "Soluong"
    t.integer "dongia"
    t.datetime "created_at", default: -> { "current_timestamp()" }, null: false
    t.datetime "updated_at", default: -> { "current_timestamp()" }, null: false
    t.bigint "donhang_id"
    t.bigint "sach_id"
    t.index ["donhang_id"], name: "index_ctdhs_on_donhang_id"
    t.index ["sach_id"], name: "index_ctdhs_on_sach_id"
  end

  create_table "donhangs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.date "ngaylap"
    t.integer "tongtien"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "khachhang_id"
    t.string "diachigh"
    t.string "httt"
    t.index ["khachhang_id"], name: "index_donhangs_on_khachhang_id"
  end

  create_table "khachhangs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "tenkh"
    t.string "diachi"
    t.string "gioitinh"
    t.string "sodt"
    t.datetime "created_at", default: -> { "current_timestamp()" }, null: false
    t.datetime "updated_at", default: -> { "current_timestamp()" }, null: false
    t.bigint "taikhoan_id"
    t.bigint "user_id"
    t.index ["taikhoan_id"], name: "index_khachhangs_on_taikhoan_id"
    t.index ["user_id"], name: "index_khachhangs_on_user_id"
  end

  create_table "quyens", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "tenquyen"
    t.datetime "created_at", default: -> { "current_timestamp()" }, null: false
    t.datetime "updated_at", default: -> { "current_timestamp()" }, null: false
  end

  create_table "saches", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "tensach"
    t.string "mota"
    t.integer "giaban"
    t.string "hinhanh"
    t.datetime "created_at", default: -> { "current_timestamp()" }, null: false
    t.datetime "updated_at", default: -> { "current_timestamp()" }, null: false
    t.bigint "theloai_id"
    t.index ["theloai_id"], name: "index_saches_on_theloai_id"
  end

  create_table "taikhoans", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "tentk"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "quyen_id"
    t.index ["quyen_id"], name: "index_taikhoans_on_quyen_id"
  end

  create_table "theloais", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "tentl"
    t.datetime "created_at", default: -> { "current_timestamp()" }, null: false
    t.datetime "updated_at", default: -> { "current_timestamp()" }, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.bigint "quyen_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["quyen_id"], name: "index_users_on_quyen_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "ctdhs", "donhangs"
  add_foreign_key "ctdhs", "saches"
  add_foreign_key "donhangs", "khachhangs"
  add_foreign_key "khachhangs", "taikhoans"
  add_foreign_key "khachhangs", "users"
  add_foreign_key "saches", "theloais"
  add_foreign_key "taikhoans", "quyens"
  add_foreign_key "users", "quyens"
end
