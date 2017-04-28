class Api::V1::BiosController < Api::V1::ApiController
  before_action :load_and_verify_authenticity_token, only: [:index]
  before_action :current_customer, only: [:index]

  def index
    @bio = Bio.where(:customer_id => @current_customer.id).first
    @theme = Theme.where(customer_id: @current_customer.id).first
    respond_to do |format|
       format.json { render :json => @bio }
       format.html { render :template => 'api/v1/bios/show' }
     end
  end

end
