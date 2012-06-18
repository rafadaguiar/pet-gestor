PetGestor::Application.routes.draw do
  root :to => "managements#index"

  devise_for :usuarios

  resources :atividades
  resources :usuarios
end
