class RegistrationsController < Devise::RegistrationsController

def create
  super
end

private
def sign_up_params
  puts "Yes Params"
  params.require(:customer_admin).permit(:email, :password, :password_confirmation, :customer_id)
end

def account_update_params
  params.require(:customer_admin).permit(:email, :password, :password_confirmation, :customer_id)
end

end
