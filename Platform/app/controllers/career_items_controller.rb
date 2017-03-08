class CareerItemsController < ApplicationController
  def create
    @bio = Bio.find(params[:bio_id])
    @career_item = @bio.career_items.create(career_item_params)
    redirect_to '/bio'
  end

  private
    def career_item_params
      params.require(:career_item).permit(:year, :details)
    end
end
