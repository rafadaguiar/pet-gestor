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

ActiveRecord::Schema.define(:version => 20111020233413) do

  create_table "atividades", :force => true do |t|
    t.string   "tipo"
    t.string   "nome"
    t.text     "descricao"
    t.string   "periodicidade"
    t.boolean  "ativo",         :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "etapa_atividades", :force => true do |t|
    t.integer  "atividade_id"
    t.string   "periodicidade"
    t.string   "nome"
    t.text     "descricao"
    t.integer  "duracao"
    t.integer  "qtd_envolvidos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "cpf"
    t.string   "nome"
    t.string   "email"
    t.string   "login"
    t.string   "senha"
    t.date     "data_aniversario"
    t.string   "telefone_casa"
    t.string   "telefone_celular"
    t.date     "ingresso_faculdade"
    t.date     "ingresso_pet"
    t.boolean  "ativo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
