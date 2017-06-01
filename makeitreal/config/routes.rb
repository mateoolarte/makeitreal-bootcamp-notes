Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'holi/crear', as: "yepeto"

  get 'holi/actualizar'

  get 'holi/ver(/:name)', to: "holi#ver"

  get "products" => "product#gets"

  get "products/:name" => "product#view_product", as: "product"

  get "index" => "index#index"

  root "index#root"
end
