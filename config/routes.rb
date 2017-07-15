Rails.application.routes.draw do
  root to: "pages#home"

  get '/posts/:id', to: 'posts#show'
  resources :posts, only: [:show]

  get 'about', to: 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
