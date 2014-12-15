RotaLucrativa::Application.routes.draw do
  get "recusar/delete"

  get "confirmar/confirm"

  resources :rota

  resources :produtos

  resources :carros

  resources :entregas

  get "minharota/index"

  get "minhasrota/index"

  get "faleconosco/index"

  get "sessions/new"

  get "users/new"

  get "produtos/index"
  root :to => "inicio#index"

  resources :statusentregas

  resources :tipocargas

  resources :users

  resources :sessions

get "log_out" => "sessions#destroy", :as => "log_out"
get "log_in" => "sessions#new", :as => "log_in"
get "sign_up" => "users#new", :as => "sign_up"
get "inicios" => "inicio#index", :as => "inicios"
get "confirmars" => "confirmar#confirm", :as => "confirmars"
get "minharotas" => "minharota#index", :as => "minharotas"
get "faleconoscos" => "faleconosco#index", :as => "faleconoscos"
get "produtos" => "produtoo#index", :as => "produtos"
get "recusars" => "recusar#delete", :as => "recusars"

end
