Rails.application.routes.draw do
  resources :to_dos, only: :index
end
