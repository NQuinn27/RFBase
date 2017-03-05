class ThemeController < ApplicationController
  before_action :find_theme, only: [:edit, :update, :delete]
  before_action :authenticate_customer_admin!
  before_action :current_customer

  def edit
  end

  def show
  end

  def update
    if @theme.update_attributes(theme_params)
      flash[:notice] = "Successfully updated theme!"
      redirect_to '/theme'
    else
      flash[:alert] = "Error updating theme!"
      render :edit
    end
  end

  private

  def theme_params
    params.require(:theme).permit(:primary_color, :primary_inverse_color, :primary_font_color, :secondary_font_color)
  end

  def find_theme
    @theme = Theme.where(customer_id: current_customer.id).first
  end

end
