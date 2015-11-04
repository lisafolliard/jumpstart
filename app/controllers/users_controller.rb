class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

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
