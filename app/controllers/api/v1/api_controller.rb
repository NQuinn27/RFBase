class Api::V1::ApiController < ActionController::Base

  def load_and_verify_authenticity_token
    # raise(ApiKeyMissing.new) unless request.headers["Api-Key"].present?
    @api_key = "9ecdcba0-c3f6-4783-bbee-8d370ab264ab"
  end

  def current_customer
    @current_customer = Customer.where(api_key: @api_key).first
    raise(CustomerMissing.new) unless @current_customer.present?
  end

  rescue_from ApiKeyMissing do
    respond_to do |format|
      format.json { render :json => {error: 'Api Key not found in header. Please add Api Key'}, status: :unauthorized }
      format.html { render :template => 'api/v1/errors/noApiKey' }
    end
  end

  rescue_from CustomerMissing do
    render json: {error: 'No customer found for that API Key'}, status: :unauthorized
  end

end
