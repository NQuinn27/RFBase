class Api::V1::PostsController < ApiController
  before_action :load_and_verify_authenticity_token
  before_action :current_customer

  def index
    @posts = @current_customer.posts
    respond_to do |format|
       format.json { render :json => @posts }
     end
  end
  
end
