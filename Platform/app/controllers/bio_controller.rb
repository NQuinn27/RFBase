class BioController < ApplicationController
  before_action :current_customer
  before_action :find_bio, only: [:show, :edit, :update, :delete]

  def show
  end

  def edit
  end

  def update
    if @bio.update_attributes(bio_params)
      flash[:success] = "Successfully updated bio!"
      redirect_to '/bio'
    else
      flash[:alert] = "Error updating bio!"
      render :edit
    end
  end

  def delete
  end

  private

  def bio_params
    params.require(:bio).permit(:photo, :name, :dob, :biography, :facebook_url, :twitter_url, :instagram_url, :web_url)
  end

  def find_bio
    @bio = Bio.where(customer_id: current_customer.id).first
    #Every customer should have one bio
    if !@bio.present?
      puts "inside"
      @bio = Bio.new(:customer_id => current_customer.id)
      @bio.save
    end
  end


end
