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

ActiveRecord::Schema.define(version: 20161122192929) do

  create_table "dashes", force: :cascade do |t|
    t.string   "titulo"
    t.string   "persona"
    t.string   "argumento"
    t.text     "descripcion"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "imagen_file_name"
    t.string   "imagen_content_type"
    t.integer  "imagen_file_size"
    t.datetime "imagen_updated_at"
  end

  create_table "sounds", force: :cascade do |t|
    t.string   "duracion"
    t.string   "formato"
    t.integer  "type_sound_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "sonido_file_name"
    t.string   "sonido_content_type"
    t.integer  "sonido_file_size"
    t.datetime "sonido_updated_at"
  end

  add_index "sounds", ["type_sound_id"], name: "index_sounds_on_type_sound_id"

  create_table "type_sounds", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
