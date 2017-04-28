class Api::V1::ThemeController < Api::V1::ApiController
  before_action :load_and_verify_authenticity_token, only: [:index]
  before_action :current_customer, only: [:index]

  def index
    @theme = Theme.where(customer_id: @current_customer.id).first
    render :json => @theme
  end
end
