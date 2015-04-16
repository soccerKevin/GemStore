class API::JewelsController < ApplicationController
  def index
    jewels = Jewel.all

    render json: jewels, status: :ok
  end

  def show
    jewel = Jewel.find(params[:id])

    render json: jewel, status: :ok
  end
end
