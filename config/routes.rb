Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
    member do
      get 'reviews/new', to: 'restaurants#new_review', as: :new_review
      post 'reviews', to: 'restaurants#create_review'
    end
  end
  root to: 'restaurants#index'
end
