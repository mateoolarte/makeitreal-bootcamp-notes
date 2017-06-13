class Order < ApplicationRecord
  has_many :orders_products
  has_many :products, through: :orders_products
  belongs_to :user

  scope :with_products, -> (id) {
    includes(:products)
  }

  scope :with_products_n_1, -> () {
    all.each do |order|
      order.products.each do |p|
        puts "PRODUCT = #{p.sku}"
      end
    end
  }
end
