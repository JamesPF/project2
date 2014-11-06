Rails.application.routes.draw do

  # root 'home#index'
  get 'home/' => 'home#index'

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

  get 'about/' => 'application#about'

  get 'news/' => 'application#news'

  get 'shows/' => 'application#shows'

  get 'music/' => 'application#music'

  get 'video/' => 'application#video'

  get 'photos/' => 'application#photos'

end
