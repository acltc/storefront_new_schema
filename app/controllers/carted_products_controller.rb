class CartedProductsController < ApplicationController

  def index
    @order = current_user.orders.find_by(completed: false)
    @tax = 0
    @subtotal = 0
    @order.carted_products.each do |carted_product|
      @tax += (carted_product.product.tax * carted_product.quantity)
      @subtotal += (carted_product.product.price * carted_product.quantity)
    end
    @total = @tax + @subtotal
  end

  def create
    order = (Order.find_by(completed: false) || Order.create(user_id: current_user.id, completed: false))
    carted_product = CartedProduct.new(product_id: params[:product_id], quantity: params[:quantity], removed: false, order_id: order.id)
    carted_product.save
    redirect_to "/carted_products"
  end

  def destroy
    CartedProduct.find_by(id: params[:id]).destroy
  end
end
