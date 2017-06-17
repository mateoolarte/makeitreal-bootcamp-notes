Rails.application.routes.draw do
  devise_for :users
  resources :invoices
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'holi/crear', as: "yepeto"

  get 'holi/actualizar'

  get 'holi/ver(/:name)', to: "holi#ver"

  get "products" => "product#gets"

  get "products/:name" => "product#view_product", as: "product"

  get "ecommerce" => "ecommerce#show"

  get "ecommerce/new" => "ecommerce#add"

  post "ecommerce/create" => "ecommerce#create"

  get "login/" => "user#show"

  post "login/send" => "user#get"

  get "index" => "index#index"

  get "/search", to: "index#search"

  get "/users", to: "user#index"

  root "index#root"
end
