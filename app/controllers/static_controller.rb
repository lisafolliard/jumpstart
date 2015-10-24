class StaticController < ApplicationController
  def index
    # @images = Image.all
    @images = Image.order(params[:sort])
  end

end
