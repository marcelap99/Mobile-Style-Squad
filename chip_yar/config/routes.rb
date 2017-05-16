Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "home#index"


  # get 'index' => 'boats#index'



get '/jobs' => 'jobs#index'

# get '/boats' => 'boats#index'



resources :users


resources :jobs



resources :boats

post "/jobs/:job_id/boats/:id" => "jobs#combine"







end
