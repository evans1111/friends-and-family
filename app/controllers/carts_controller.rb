class CartsController < ApplicationController

  def index
    @carts = current_user.carts
  end

  def create
    c = current_user.carts.build
    c.product_id = params[:product_id]
    c.save!
    redirect_to carts_path
  end

  def product_delete
    @carts = current_user.carts
    p = @carts.where(id: params[:id], product_id: params[:product_id])
    p.first.destroy
    redirect_to carts_path
  end


end
