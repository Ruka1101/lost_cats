Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'posts/new' => 'posts#new'
  get 'posts/:id' => 'posts#show', as: 'show_post'
  delete 'posts/:id' => 'posts#destroy'
  get 'posts/:id/new' => 'messages#new', as: 'new_messages'
  post 'posts/:id/new' => 'messages#create', as: 'messages'

  get 'maps/index' => 'maps#index'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "posts#index"
  # localhost:3000/posts
  resources :posts, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  # localhost: 3000/maps
  resources :maps, only: [:index]
end
