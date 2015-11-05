class CriticsController < ApplicationController
  def index
    @critics = Critic.all
  end

  def new
    @critic = Critic.new
  end

  def create
    @critic = Critic.new(critic_params)
    if @critic.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def critic_params
    params.require(:critic).permit(:name, :description, :address, :latitude, :longitude)
  end
end
