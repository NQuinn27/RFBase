class CustomerController < ApplicationController

  def index
    @customers = Customer.all
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.save
  end

  def customer_params
    params.require(:customer).permit(:name)
  end

end
