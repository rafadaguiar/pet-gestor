class CreateEtapaAtividades < ActiveRecord::Migration
  def self.up
    create_table :etapa_atividades do |t|
      t.references :atividade
      t.string :periodicidade
      t.string :nome
      t.text :descricao
      t.integer :duracao
      t.integer :qtd_envolvidos

      t.timestamps
    end
  end

  def self.down
    drop_table :etapa_atividades
  end
end
