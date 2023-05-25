Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
  get '/lists', to: 'lists#index'
  get 'lists/new', to: 'lists#new'
  get 'lists/:id', to: 'lists#show', as: :list
  post 'lists', to: 'lists#create'
  get 'lists/:id/edit', to: 'lists#edit'
  patch 'lists/:id', to: 'lists#update'
  delete 'lists/:id', to: 'lists#destroy'

  # resources :bookmarks, only: :destroy
  # resources :reviews, only: :destroy
end
# FINISHING THE ROUTES

# resources :lists do
#   resources :lists, only: [:new, :create]
# end
# resources :reviews, only: [:destroy]
# end
