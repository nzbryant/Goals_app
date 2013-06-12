Goals::Application.routes.draw do

  devise_for :users
  
  get "why" => "site#why", :as => "why"
  get "features" => "site#features", :as => "features"
  get "reviews" => "site#reviews", :as => "reviews"
  get "buy_now" => "site#buy_now", :as => "buy_now"
  get "help" => "site#help", :as => "help"
  get "about_us" => "site#about_us", :as => "about_us"
  
  get "terms" => "site#terms", :as => "terms"
  get "privacy" => "site#privacy", :as => "privacy"
  get "affiliate" => "site#affiliate", :as => "affiliate"

  get "sign_up" => "users#new", :as => "sign_up"
	get "log_in" => "sessions#new", :as => "log_in"
	get "log_out" => "sessions#destroy", :as => "log_out"

  resources :values, :beliefs, :internal_comms, :external_comms, :habits, :character_traits, :sessions
  
  resources :users, :except => [ :edit ] do
	  resources :goals
	end
   
  root :to => 'site#index'
end
