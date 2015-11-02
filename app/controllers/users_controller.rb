class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @image = Image.find(params[:id])
    # @reviews = @image.reviews
  end
end
