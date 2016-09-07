Rails.application.routes.draw do
  resources :links do
    resources :comments
    patch 'add_one'
    patch 'subtract_one'
  end
end
