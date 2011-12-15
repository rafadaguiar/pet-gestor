class CreateUsuarios < ActiveRecord::Migration
  def self.up
    create_table :usuarios do |t|
      t.string :cpf
      t.string :nome
      t.string :login
      t.date :data_aniversario
      t.string :telefone_casa
      t.string :telefone_celular
      t.date :ingresso_faculdade
      t.date :ingresso_pet
      t.boolean :ativo

      t.timestamps
    end
  end

  def self.down
    drop_table :usuarios
  end
end
