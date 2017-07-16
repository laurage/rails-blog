Rails.application.routes.draw do


  root to: "pages#home"

  get 'about', to: 'pages#about'

  resources :posts, only: [:show]

  comfy_route :cms_admin, :path => '/admin'
  # Make sure this routeset is defined last
  comfy_route :cms, :path => '/', :sitemap => false

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
