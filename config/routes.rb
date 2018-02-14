Rails.application.routes.draw do

  # root to: 'restaurants#index'
  # get 'restaurants', to: 'restaurants#index'

  # get 'restaurants/new', to: 'restaurants#new'

  # post 'restaurants', to: 'restaurants#create'

  # get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: :new_restaurant_review

  # post 'restaurants/:restaurant_id/reviews', to: 'reviews#create'

  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  resources :restaurants do
   resources :reviews, only: [ :index, :new, :create ]
  end

  resources :reviews, only: [ :show, :edit, :update, :destroy ]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
