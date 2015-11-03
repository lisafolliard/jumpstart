class StaticController < ApplicationController
  def index
    @images = Image.all
    # @images = Image.order(params[:sort])
    # @users = User.order(username: :desc).all
    # @user = User.all
  end

end
