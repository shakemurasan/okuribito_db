OkuribitoDb::Engine.routes.draw do
  resources :db_infos, only: [:index]
end
