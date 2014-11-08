Rails.application.routes.draw do

  get 'signup', to: 'users#new', as: 'signup'
  get 'admin-login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions


  # This is for the back end homepage
  get 'home/' => 'home#index', as: :home

  # These routes are for shows
  get 'tourdate/' => 'tourdate#index', as: :tourdate

  get 'tourdate/new' => 'tourdate#new', as: :new

  get 'tourdate/:id' => 'tourdate#show', as: :single_tourdate

  post 'tourdate/' => 'tourdate#create', as: :new_tourdate

  get 'tourdate/:id/edit' =>  'tourdate#edit', as: :edit_tourdate

  patch 'tourdate/:id' => 'tourdate#update', as: :update_tourdate

  delete 'tourdate/:id' => 'tourdate#destroy', as: :delete_tourdate


  # These routes are for news posts
  get 'post/' => 'post#index', as: :post

  get 'post/new' => 'post#new', as: :addpost

  get 'post/:id' => 'post#show', as: :single_post

  post 'post/' => 'post#create', as: :new_post

  get 'post/:id/edit' =>  'post#edit', as: :edit_post

  patch 'post/:id' => 'post#update', as: :update_post

  delete 'post/:id' => 'post#destroy', as: :delete_post


  #These routes determine the front end
  root 'application#index'

  get 'about/' => 'application#about', as: :about

  # These two were replaced by the other two routes for News and Shows below
  # get 'news/' => 'application#news'

  # get 'shows/' => 'application#shows'

  get 'music/' => 'application#music', as: :music

  get 'video/' => 'application#video', as: :video

  get 'photos/' => 'application#photos', as: :photos


  #For News and Shows

  get 'news/index' => 'news#index', as: :news

  get 'shows/index' => 'shows#index', as: :shows

end
