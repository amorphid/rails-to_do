Rails.application.routes.draw do
  resources :to_dos, only: [:create, :destroy, :index]
end
