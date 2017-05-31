class ProductController < ApplicationController
  def gets
    @products = [
      "Telefonos",
      "Televisores",
      "Computadores",
      "Mesas"
    ]

    render json: @products, status: :bad_request
  end
end
