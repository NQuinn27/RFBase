class CustomerSettingsController < ApplicationController
  before_action :current_customer

  def edit
    @customer_settings = CustomerSetting.new
    @customer_settings.ios_env = @current_customer.ios_environment
    @customer_settings.ios_push_cert = @current_customer.ios_push_cert
  end

  def update
    if params[:customer_setting][:ios_env]
      @current_customer.ios_environment = params[:customer_setting][:ios_env]
    end
    if params[:customer_setting][:ios_push_cert]
      @current_customer.ios_push_cert = params[:customer_setting][:ios_push_cert]
    end
    @current_customer.save!
    redirect_to '/customer_settings'
  end

  private
  def customer_settings_params
    params.require(:customer_setting).permit(:ios_environment, :ios_push_cert)
  end

end
