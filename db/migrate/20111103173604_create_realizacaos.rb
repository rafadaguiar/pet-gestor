class CreateRealizacaos < ActiveRecord::Migration
  def self.up
    create_table :realizacaos do |t|
      t.references :atividade
      t.date :data_inicio
      t.date :data_fim

      t.timestamps
    end
  end

  def self.down
    drop_table :realizacaos
  end
end
