class OrdersController < ApplicationController

  def create
    product = Product.find_by(id: params[:product_id])
    quantity = params[:quantity].to_i
    total_tax = product.tax * quantity
    subtotal = quantity * product.price
    total = subtotal + total_tax
    order = Order.new(product_id: params[:product_id], user_id: current_user.id, quantity: quantity, subtotal: subtotal, tax: total_tax, total: total)
    order.save
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
  end
end
