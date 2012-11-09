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

ActiveRecord::Schema.define(:version => 20121109131736) do

  create_table "albums", :force => true do |t|
    t.string   "titulo"
    t.string   "genero"
    t.date     "lancado_em"
    t.integer  "n_faixas"
    t.integer  "nota"
    t.boolean  "have"
    t.integer  "banda_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "albums", ["banda_id"], :name => "index_albums_on_banda_id"

  create_table "bandas", :force => true do |t|
    t.string   "name"
    t.string   "genero"
    t.text     "bio"
    t.date     "fundada_em"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "faixas", :force => true do |t|
    t.string   "titulo"
    t.text     "letra"
    t.integer  "album_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "faixas", ["album_id"], :name => "index_faixas_on_album_id"

end
