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

ActiveRecord::Schema.define(version: 20140117225658) do

  create_table "bairros", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome",         limit: 80
    t.integer  "uf_id"
    t.integer  "municipio_id"
  end

  add_index "bairros", ["municipio_id"], name: "index_bairros_on_municipio_id", using: :btree
  add_index "bairros", ["uf_id"], name: "index_bairros_on_uf_id", using: :btree

  create_table "cursos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome",       limit: 80
  end

  create_table "cursos_instituicoes", id: false, force: true do |t|
    t.integer "curso_id"
    t.integer "instituicao_id"
  end

  create_table "instituicoes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome",            limit: 80
    t.string   "email"
    t.string   "url"
    t.string   "tipo",            limit: 40
    t.string   "logadouro",       limit: 80
    t.string   "numero",          limit: 10
    t.string   "complemento",     limit: 40
    t.string   "cep",             limit: 8
    t.string   "telefone_ddd",    limit: 2
    t.string   "telefone_numero", limit: 9
  end

  create_table "municipios", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome",       limit: 80
    t.integer  "uf_id"
  end

  add_index "municipios", ["uf_id"], name: "index_municipios_on_uf_id", using: :btree

  create_table "ufs", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nome",       limit: 2
  end

end
