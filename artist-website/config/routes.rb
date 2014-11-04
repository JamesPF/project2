Rails.application.routes.draw do

  root 'home#index'

  get 'tourdate/index' => 'tourdate#index', as: :tourdate

  get 'tourdate/new' => 'tourdate#new', as: :new

  post 'tourdate/new_tourdate' => 'tourdate#new_tourdate', as: :new_tourdate


  get 'post/index' => 'post#index', as: :post

  get 'post/new' => 'post#new', as: :addpost

  post 'post/new_post' => 'post#new_post', as: :new_post

  # get 'post/one' => 'post#one', as: :one

end
