Goals::Application.routes.draw do

  
  resources :values, :goals, :beliefs, :internal_comms, :external_comms, :habits, :character_traits

  resources :users, :except => [ :new, :edit ], defaults: {format: :json}
  
  root :to => 'site#index'
end
