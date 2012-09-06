Offerus::Application.routes.draw do
  devise_for :users

  resources :products

  resources :tribes
  root :to => 'tribes#index'

end
