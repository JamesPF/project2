Rails.application.routes.draw do

  root 'home#index'

  get 'tourdate/index' => 'tourdate#index', as: :tourdate

  get 'tourdate/new' => 'tourdate#new', as: :new

  post 'tourdate/new_tourdate' => 'tourdate#new_tourdate', as: :new_tourdate

end
