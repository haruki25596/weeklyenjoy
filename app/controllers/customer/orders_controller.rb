class Customer::OrdersController < ApplicationController
  def index
    @orders = current_customer.orders
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
    
  end

  def create
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
  end
  
  private

  def order_params
    params.require(:order).permit(:name,:address,:postal_code,:billing_amount,:payment_method,:status,:address_option)
  end
end
