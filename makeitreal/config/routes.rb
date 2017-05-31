Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'holi/crear'

  get 'holi/actualizar'

  get 'holi/ver'

  get "index" => "index#holi"

  get "products" => "product#gets"

  root "index#root"
end
