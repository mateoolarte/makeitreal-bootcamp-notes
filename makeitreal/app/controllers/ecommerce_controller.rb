class EcommerceController < ApplicationController
  def show
    @products = Ecommerce.all
  end

  def new

  end

  def create
    sku = params[:sku]
    quantity = params[:quantity].to_i
    name = params[:name]
    Ecommerce.create(sku: sku, quantity: quantity, name: name)

    redirect_to ecommerce_path
  end
end
