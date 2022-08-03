Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1, defaults: { format: 'json' } do
      resources :users, only: [:index, :show, :edit, :update] do
        resources :posts, only: [:index, :new, :show, :create, :destroy]
      end
      resources :posts do
        resources :comments, only: [:create, :destroy]
        resources :likes, only: [:create]
      end
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
