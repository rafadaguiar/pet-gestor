class CreateEtapaRealizacaos < ActiveRecord::Migration
  def self.up
    create_table :etapa_realizacaos do |t|
      t.references :realizacao
      t.text :nome
      t.text :descricao
      t.text :status
      t.date :data_inicio
      t.date :data_fim

      t.timestamps
    end
  end

  def self.down
    drop_table :etapa_realizacaos
  end
end
