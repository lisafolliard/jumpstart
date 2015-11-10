class UsersController < ApplicationController
  def index
    @images = Image.order(params[:sort])
    if params[:query]
      @search = User.basic_search(params[:query])
      redirect_to user_path(@search.first)
    else
      @search = []
    end
    # if params[:query].blank?

  end

  def show
    @user = User.find(params[:id])
  end


      # if params[:search]
      #       @users = User.search(params[:search]).order("created_at DESC")
      #     else
      #       @users = User.order("created_at DESC")
      #     end


  # def edit
  #   @user = User.find(params[:user_id])
  # end
  #
  # def update
  #   @user = User.find(params[:id])
  #   if @user.update(user_params)
  #     redirect_to user_path(@user)
  #   else
  #     render :edit
  #   end
  # end


  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :about)
  end

end
