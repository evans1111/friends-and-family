class OrderItemsController < ApplicationController

  def index
    #@items = current_cart.order.items
    @items = Cart.where('user_id = ?', current_user.id)
  end

  def create
    current_cart.add_item(
      product_id: params[:product_id],
      quantity: params[:quantity]
    )

    redirect_to cart_path
  end
end
