class UsuariosController < ApplicationController
  
  def index
    @usuarios = Usuario.find :all 
  end
  
  def show
    @usuario = Usuario.find params[:id]
  end

end
