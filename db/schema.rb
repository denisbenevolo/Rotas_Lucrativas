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

ActiveRecord::Schema.define(:version => 20130610151748) do

  create_table "carros", :force => true do |t|
    t.string   "marca"
    t.string   "modelo"
    t.string   "ano"
    t.string   "cor"
    t.string   "placa"
    t.integer  "idUser"
    t.integer  "idRota"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
  end

  create_table "entregas", :force => true do |t|
    t.string   "origem"
    t.string   "destino"
    t.date     "data"
    t.string   "statusentrega"
    t.integer  "idUser"
    t.integer  "idMotorista"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "preco"
  end

  create_table "produtos", :force => true do |t|
    t.string   "tamanho"
    t.string   "peso"
    t.integer  "tipocarga_id"
    t.text     "descricao"
    t.integer  "idUser"
    t.integer  "idEntrega"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
  end

  create_table "rota", :force => true do |t|
    t.string   "origem"
    t.string   "destino"
    t.date     "data"
    t.time     "horario"
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "idUser"
    t.integer  "idCarro"
    t.boolean  "gmaps"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "statusentregas", :force => true do |t|
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tipocargas", :force => true do |t|
    t.string   "tipo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "nome"
    t.string   "sobrenome"
    t.string   "telefone"
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
  end

end
