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

ActiveRecord::Schema.define(version: 2018_11_29_132814) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "codigo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["codigo"], name: "index_admins_on_codigo", unique: true
  end

  create_table "bids", force: :cascade do |t|
    t.float "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "entry_id"
    t.integer "block_id"
    t.index ["block_id"], name: "index_bidblock_id"
    t.index ["entry_id"], name: "index_entry_id"
  end

  create_table "blocks", force: :cascade do |t|
    t.date "fecha"
    t.string "adjudicado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "residence_id"
    t.float "precio"
    t.integer "estado"
    t.index ["residence_id"], name: "index_residence_id"
  end

  create_table "entries", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "block_id"
    t.integer "user_id"
    t.index ["block_id"], name: "index_block_id"
    t.index ["user_id"], name: "index_user_id"
  end

  create_table "residences", force: :cascade do |t|
    t.string "nombre"
    t.string "provincia"
    t.string "partido"
    t.string "ciudad"
    t.string "direccion"
    t.string "img_link"
    t.string "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_configs", force: :cascade do |t|
    t.boolean "esPremium"
    t.integer "creditos"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_userconfigs_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.integer "codTarjeta"
    t.integer "numTarjeta"
    t.string "name"
    t.string "email"
    t.boolean "esPremium"
    t.date "birth_date"
    t.integer "user_configs_id"
    t.index ["user_configs_id"], name: "index_configsuser_id"
  end

end
