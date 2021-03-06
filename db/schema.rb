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

ActiveRecord::Schema.define(version: 2018_10_26_034619) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "nombre_cliente"
    t.string "rfc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "rfc"
    t.string "nombre_cliente"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detalle_ordenes", force: :cascade do |t|
    t.integer "cantidad"
    t.float "precio_venta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "detalle_ordens", force: :cascade do |t|
    t.integer "cantidad"
    t.float "precio_venta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "ordene_id"
    t.integer "producto_id"
  end

  create_table "ordenes", force: :cascade do |t|
    t.integer "numero_orden"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cliente_id"
    t.integer "client_id"
  end

  create_table "ordens", force: :cascade do |t|
    t.integer "numero_orden"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre_producto"
    t.float "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "nombre_producto"
    t.float "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
