class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def current_customer
    print "#{current_customer_admin.first_name}"
    @current_customer = Customer.find(current_customer_admin.customer_id)
  end
end
