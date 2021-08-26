class Admin::CustomersController < ApplicationController
  
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
  end

  private
  
  def customer_params
   params.require(:customer).permit(:first_name,:last_name,:first_name_kana,:last_name_kana,:email,:postal_code,:address,:telphone_number,:is_deleted)
  end

end
