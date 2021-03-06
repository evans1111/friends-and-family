class Cart < ApplicationRecord
  belongs_to :product

  # def initialize(token:)
  #   @token = token
  # end

  def order
    # @order ||= Order.find_or_create_by(token: @token) do |order|
    #   #order.sub_total = 0
    # end
  end

  def add_item(product_id:, quantity: 1)
    product = Product.find(product_id)

    order_item = order.items.find_or_create_by(
      product_id: product_id
    )

    order_item.price = price_in_cents
    order_item.quantity = quantity

    order_item.save
  end

  def total
  end

end
