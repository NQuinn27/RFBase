class Api::V1::AppUsersController < Api::V1::ApiController
  before_action :load_and_verify_authenticity_token
  before_action :current_customer

  def create
    @user = AppUser.where(:device_token => params[:app_user][:device_token]).first
    if @user.present? && @user.customer == @current_customer
      @user.last_login = DateTime.now
      if @user.update_attributes(app_user_params)
        render :json => @user
      else
        respond_with '{"error": "not_found"}', status: :not_found
      end
    else
      @user = AppUser.new(app_user_params)
      @user.signup_date = DateTime.now
      @user.last_login = DateTime.now
      @user.customer = @current_customer
      @user.save!
      render :json => @user
    end
  end

  def show
    @user = AppUser.find(params[:id])
    @user.last_login = DateTime.now
    @user.save!
    render :json => @user
  end

  def update
    @user = AppUser.find(params[:id])
    if @user.update_attributes(app_user_params)
      render :json => @user
    else
      respond_with '{"error": "not_found"}', status: :not_found
    end
  end

 private
 def app_user_params
   params.require(:app_user).permit(:first_name, :last_name, :email, :push_token, :device_token, :device_type, :last_login)
 end

end
