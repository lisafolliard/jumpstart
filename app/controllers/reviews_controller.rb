class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def new
    @image = Image.find(params[:image_id])
    @review = @image.reviews.new
  end

  def create
    @image = Image.find(params[:image_id])
    @review = @image.reviews.new(review_params)
    if @review.save
      # redirect_to user_path(@image.user)
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    else
      render :new
    end
  end

private

  def review_params
    params.require(:review).permit(:author, :review)
  end
end
