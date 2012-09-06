Offerus::Application.routes.draw do
  resources :products

  resources :tribes
  root :to => 'tribes#index'

end
