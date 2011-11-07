class UsuariosController < ApplicationController
  def index
    @usuarios = Usuario.find :all 
  end

end
