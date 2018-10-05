Rails.application.routes.draw do

  root "pages#home"

  get 'errors/file_not_found'

  resources :stories
  resources :ferries
  resources :users
  resources :user_sessions, only: [ :new, :create, :destroy ]

  get 'login' => 'user_sessions#new'
  get 'logout' => 'user_sessions#destroy'

  get '/washington-island-ferry' => 'ferries#index'

  get 'ferries/show'

  get '/' => 'pages#home'

  get '/about-us' => 'pages#about-us'

  get '/birding' => 'pages#birding'

  get '/cherry-train' => 'pages#cherry-train'

  get '/fleet' => 'pages#fleet'

  get '/island-events' => 'pages#island-events'

  get '/kayak' => 'pages#kayak'

  get '/plan-trip' => 'pages#plan-trip'

  get '/ride-ferry' => 'pages#ride-ferry'

  get '/rock-island-ferry' => 'pages#rock-island-ferry'

  get '/rock-island-faq' => 'pages#rock-island-faq'

  get '/web-cam' => 'pages#web-cam'

  get '/75th-anniversary' => 'stories#index'

  get '/contact' => 'pages#contact'

  get '/weather' => 'pages#weather'

  match '/404', to: 'errors#file_not_found', via: :all

end
