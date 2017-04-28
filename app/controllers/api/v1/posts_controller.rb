class Api::V1::PostsController < Api::V1::ApiController
  before_action :load_and_verify_authenticity_token, only :index
  before_action :current_customer, only :index

  def index
    puts "Made It"
    @posts = @current_customer.posts.order(publish_date: :desc)
    respond_to do |format|
       format.json { render :json => @posts }
       format.html { render :template => 'api/v1/posts/index' }
     end
  end

  def show
    @post = Post.find(params[:id])
    respond_to do |format|
       format.json { render :json => @post }
       format.html { render :template => 'api/v1/posts/show' }
     end
  end

end
