class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_customer
    @current_customer = Customer.find(current_customer_admin.customer_id)
  end
end
