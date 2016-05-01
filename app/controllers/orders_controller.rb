class OrdersController < ApplicationController


  def show
    @order = Order.find_by(id: params[:id])
  end

  def update
    order = current_user.orders.find_by(completed: false)
    total_tax = 0
    total_subtotal = 0
    order.carted_products.each do |carted_product|
      total_tax += (carted_product.product.tax * carted_product.quantity)
      total_subtotal += (carted_product.product.price * carted_product.quantity)
    end
    total = total_tax + total_subtotal
    order.update(subtotal: total_subtotal, tax: total_tax, total: total, completed: true)
    redirect_to "/orders/#{order.id}"
  end
end
