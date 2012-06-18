PetGestor::Application.routes.draw do
  devise_for :usuarios

  root :to => "managements#index"

  resources :atividades
  resources :usuarios
end
