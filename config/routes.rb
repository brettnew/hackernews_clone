Rails.application.routes.draw do
  resources :links do
    patch 'add_one'
  end
end
