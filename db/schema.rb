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

ActiveRecord::Schema.define(:version => 20120618173030) do

  create_table "atividades", :force => true do |t|
    t.string   "tipo"
    t.string   "nome"
    t.text     "descricao"
    t.string   "periodicidade"
    t.boolean  "ativo",         :default => true
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "atividades_usuarios", :id => false, :force => true do |t|
    t.integer  "atividade_id"
    t.integer  "usuario_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "etapa_atividades", :force => true do |t|
    t.integer  "atividade_id"
    t.string   "periodicidade"
    t.string   "nome"
    t.text     "descricao"
    t.integer  "duracao"
    t.integer  "qtd_envolvidos"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "etapa_realizacaos", :force => true do |t|
    t.integer  "realizacao_id"
    t.text     "nome"
    t.text     "descricao"
    t.text     "status"
    t.date     "data_inicio"
    t.date     "data_fim"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "realizacaos", :force => true do |t|
    t.integer  "atividade_id"
    t.date     "data_inicio"
    t.date     "data_fim"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.string   "cpf"
    t.string   "nome"
    t.date     "data_aniversario"
    t.string   "telefone_casa"
    t.string   "telefone_celular"
    t.date     "ingresso_faculdade"
    t.date     "ingresso_pet"
    t.boolean  "ativo"
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
  end

  add_index "usuarios", ["email"], :name => "index_usuarios_on_email", :unique => true
  add_index "usuarios", ["reset_password_token"], :name => "index_usuarios_on_reset_password_token", :unique => true

end
