class CreateResponsavelAtividades < ActiveRecord::Migration
  def self.up
    create_table :responsavel_atividades do |t|
      t.references :usuario
      t.references :atividade

      t.timestamps
    end
  end

  def self.down
    drop_table :responsavel_atividades
  end
end
