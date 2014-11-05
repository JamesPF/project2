Rails.application.routes.draw do

  root 'home#index'

  # These routes are for shows
  get 'tourdate/index' => 'tourdate#index', as: :tourdate

  get 'tourdate/new' => 'tourdate#new', as: :new

  get 'tourdate/:id' => 'tourdate#show', as: :single_tourdate

  post 'tourdate/index' => 'tourdate#create', as: :new_tourdate

  get 'tourdate/:id/edit' =>  'tourdate#edit', as: :edit_tourdate

  patch 'tourdate/:id' => 'tourdate#update', as: :update_tourdate

  delete 'tourdate/:id' => 'tourdate#destroy', as: :delete_tourdate


  # These routes are for news posts
  get 'post/index' => 'post#index', as: :post

  get 'post/new' => 'post#new', as: :addpost

  get 'post/:id' => 'post#show', as: :single_post

  post 'post/index' => 'post#create', as: :new_post

  get 'post/:id/edit' =>  'post#edit', as: :edit_post

  patch 'post/:id' => 'post#update', as: :update_post

  delete 'post/:id' => 'post#destroy', as: :delete_post

end
