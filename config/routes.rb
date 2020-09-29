Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'
  resources :books
  resources :authors
  namespace :api do
    namespace :v1 do
      resources :authors, only: [:show], :defaults => { :format => 'json' }
    end
  end
end
