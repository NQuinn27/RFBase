class Api::V1::MediaController < Api::V1::ApiController
  before_action :load_and_verify_authenticity_token, only: [:index]
  before_action :current_customer, only: [:index]

  def index
    @media_items = @current_customer.media_items.order(created_at: :desc)
    respond_to do |format|
       format.json { render :json => @media_items }
       format.html { render :template => 'api/v1/media/index' }
     end
  end

  def show
    @media_item = MediaItem.find(params[:id])
    respond_to do |format|
       format.json { render :json => @media_item }
       format.html { render :template => 'api/v1/media/show' }
     end
  end

end
