Offerus::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users

  resources :products do
    collection do 
      post "add_comment"
      post "create_offer"
      get "solar"
      post "product_group"
      get "solar_offers"
      get "solar_group_offers"
    end
  end

  resources :tribes
  root :to => 'tribes#index'

end
