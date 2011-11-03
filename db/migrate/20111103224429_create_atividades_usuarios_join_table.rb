class CreateAtividadesUsuariosJoinTable < ActiveRecord::Migration
  def self.up
    create_table :atividades_usuarios, :id => false do |t|
      t.integer :atividade_id
      t.integer :usuario_id
      
      t.timestamps
     end
  end

  def self.down
    drop_table :atividade_usuarios
  end
end
