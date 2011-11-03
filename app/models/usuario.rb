class Usuario < ActiveRecord::Base
  
  validates_presence_of :nome, :cpf, :email, :login, :senha
  has_and_belongs_to_many :atividades

end
