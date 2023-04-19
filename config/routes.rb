Rails.application.routes.draw do
  # get 'events/index'
  devise_for :users
  resources :posts, :users, :articles, :people, :products, :events
  # resources :events

  root "users#index"

  get 'users/index'
  get 'home/index'
  # get 'users/custom' #custom routes
  # get 'about-me', to: 'users#about' #custom routes


  # get '/users/search/:id/' =>'users#search', :as => :search_user


  resources :users do
      # get 'preview', on: :member
      get 'preview', on: :new 
      resources :events
  end

  resources :users do
    collection do
      get 'search'
    end
  end

  direct :userpage do
    "https://www.w3schools.com/"
  end

  scope :admin do
    resources :users
  end

  devise_scope :user do
    get "users/sign_out", to: "devise/session#destroy"
  end

  # get '/users', to: redirect('/home')
  # get '/users/:name', to: redirect('/home/%{name}', status: 302)

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
