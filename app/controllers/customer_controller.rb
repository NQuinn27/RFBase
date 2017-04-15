require 'securerandom'
class CustomerController < ApplicationController

  def index
    @customers = Customer.all
  end

  def create
    @customer = Customer.new(customer_params)
    generate_api_key
    @customer.save
    #Customer has ONE Theme, Bio
    Theme.create(:customer_id => @customer.id)
    Bio.create(:customer_id => @customer.id)
  end

  def customer_params
    params.require(:customer).permit(:name)
  end


  private
  def generate_api_key
    if !api_key.present?
      @customer.api_key = ::SecureRandom.uuid
    end
  end

end
