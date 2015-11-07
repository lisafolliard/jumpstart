class CriticsController < ApplicationController
  def index
    @critics = Critic.all
    @hash = Gmaps4rails.build_markers(@critics) do |critic, marker|
     marker.lat critic.latitude
     marker.lng critic.longitude
     marker.infowindow critic.address
    end
  end

  def show
    @critic = Critic.find(params[:id])
    # @hash = Gmaps4rails.build_markers(@critics) do |critic, marker|
    #  marker.lat critic.latitude
    #  marker.lng critic.longitude
    #  marker.infowindow critic.address
    # end
  end

  def new
    @critic = Critic.new
  end

  def create
    @critic = Critic.new(critic_params)
    if @critic.save
      redirect_to critics_path(@critic)
    else
      render :new
    end
  end

  def edit
    @critic = Critic.find(params[:id])
  end

  def update
    @critic = Critic.find(params[:id])
    if @critic.update(critic_params)
      # redirect_to critics_path(@critic)
      redirect_to critics_path(@critic)
    else
      render :edit
    end
  end

  def destroy
    @critic = Critic.find(params[:id])
    @critic.destroy
      redirect_to critics_path(@critic)
  end

  private
  def critic_params
    params.require(:critic).permit(:name, :description, :school, :address, :latitude, :longitude)
  end
end
