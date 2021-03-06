class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :show, :delete]
  before_action :authenticate_customer_admin!
  before_action :current_customer
  # Index action to render all posts
  def index
    @posts = @current_customer.posts.order(publish_date: :desc)
  end

  # New action for creating post
  def new
    @post = Post.new
    @post.publish_date = DateTime.now
  end

  # Create action saves the post into database
  def create
    @post = Post.new(post_params)
    @post.customer = @current_customer
    if @post.save
      flash[:success] = "Successfully created post!"
      redirect_to post_path(@post)
    else
      flash[:error] = "Error creating new post!"
      render :new
    end
  end

  # Edit action retrives the post and renders the edit page
  def edit
  end

  # Update action updates the post with the new information
  def update
    if @post.update_attributes(post_params)
      flash[:success] = "Successfully updated post!"
      redirect_to posts_path
    else
      flash[:error] = "Error updating post!"
      render :edit
    end
  end

  # The show action renders the individual post after retrieving the the id
  def show
  end

  # The destroy action removes the post permanently from the database
  def destroy
    @post = Post.find(params[:id])
    if @post.present?
      if @post.destroy
        flash[:notice] = "Successfully deleted post!"
        redirect_to posts_path
      else
        flash[:alert] = "Error deleting post!"
      end
    else
      flash[:alert] = "Error deleting post!"
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :header_image, :icon_image, :publish_date, :bootsy_image_gallery_id)
  end

  def find_post
    @post = Post.find(params[:id])
  end

end
