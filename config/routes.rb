Offerus::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config


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
  root :to => "products#solar"
  devise_for :users,  :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  #devise_scope :user do
  #  get '/users/auth/:provider' => 'users/omniauth_callbacks#passthru'
  #end
  resources :users, :only => [:show, :index]

end
