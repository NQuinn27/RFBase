class Api::V1::PostsController < Api::V1::ApiController
  before_action :load_and_verify_authenticity_token
  before_action :current_customer

  def index
    puts "Made It"
    @posts = @current_customer.posts
    respond_to do |format|
       format.json { render :json => @posts }
       format.html { render :template => 'api/v1/posts/index' }
     end
  end

end
