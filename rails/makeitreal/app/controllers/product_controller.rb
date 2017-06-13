class ProductController < ApplicationController
  def products
    [
      { name: "Telefonos" },
      { name: "Televisores" },
      { name: "Computadores" },
      { name: "Mesas" },
    ]
  end

  def gets
    @products = products
    # render json: @products, status: :bad_request
  end

  def view_product
    @name = params[:name]
    @product = products.find { |product| product[:name] == @name }
  end
end
