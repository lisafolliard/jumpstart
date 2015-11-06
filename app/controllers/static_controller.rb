class StaticController < ApplicationController
  def index
    # @images = Image.all

    @images = Image.order(user: :desc)

    # @images = Image.order(params[:sort])
    # @users = User.order(username: :desc).all
    # @user = User.all
    # @user = User.order(params[:sort])
  end

end
