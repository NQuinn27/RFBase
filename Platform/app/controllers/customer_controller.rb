require 'securerandom'
class CustomerController < ApplicationController

  def index
    @customers = Customer.all
  end

  def create
    @customer = Customer.new(customer_params)
    @customer.api_key = generate_api_key
    @customer.save
  end

  def customer_params
    params.require(:customer).permit(:name)
  end

  private
  def generate_api_key
    return ::SecureRandom.uuid
  end

end
