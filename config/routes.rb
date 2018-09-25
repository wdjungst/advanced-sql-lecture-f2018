Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'api/auth'
  namespace :api do
    resources :properties, only: [:index]
    get 'cities/:city', to: 'properties#city'
    resources :agents, only: [:index, :show]
    resources :buyers, only: [:show]
    get 'properties/city_cost', to: 'properties#city_cost'
  end

  #Do not place any routes below this one
  if Rails.env.production?
    get '*other', to: 'static#index'
  end
end
