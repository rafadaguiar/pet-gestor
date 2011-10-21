class CreateAtividades < ActiveRecord::Migration
  def self.up
    create_table :atividades do |t|
      t.string :tipo
      t.string :nome
      t.text :descricao
      t.string :periodicidade
      t.boolean :ativo,          :default => true

      t.timestamps
    end
  end

  def self.down
    drop_table :atividades
  end
end
