Rails.application.routes.draw do
  root 'posts#index'
  # get 'posts/new'
  # get 'posts/edit'
  # get 'posts/show'
  resources :posts

  get 'about' => 'posts#about'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
