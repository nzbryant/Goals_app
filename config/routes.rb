Goals::Application.routes.draw do

  get "sign_up" => "users#new", :as => "sign_up"
	get "log_in" => "sessions#new", :as => "log_in"
	get "log_out" => "sessions#destroy", :as => "log_out"

  resources :values, :beliefs, :internal_comms, :external_comms, :habits, :character_traits, :sessions
  
  resources :users, :except => [ :edit ] 
  resources :goals
  
   
  root :to => 'site#index'
end
