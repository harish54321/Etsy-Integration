EtsyRenewAgent::Application.routes.draw do

  resources :access_tokens, :only => [:edit, :update]
  resources :users, :only => [:new, :create]
  resource :session, :only => [:new, :create, :destroy]

  get "etsy/authorize"
  get "etsy/new_authorization"

  root :to => "welcome#index"
end
