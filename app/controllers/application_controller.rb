class ApplicationController < ActionController::Base
  before_filter :authenticate_usuario!
  protect_from_forgery
end
