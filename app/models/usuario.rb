class Usuario < ActiveRecord::Base
  validates_presence_of :nome, :cpf, :email, :login, :senha
end
