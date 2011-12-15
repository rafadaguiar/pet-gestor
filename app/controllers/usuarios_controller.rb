class UsuariosController < ApplicationController
  
  before_filter :authenticate_usuario!

  def index
    @usuarios = Usuario.find :all 
  end

end
