class API::JewelsController < ApplicationController
  def index
    jewels = Jewel.all

    respond_to do |format|
      format.json { render json: jewels, status: :ok }
      format.xml  { render xml: jewels, status: :ok }
    end
  end

  def show
    jewel = Jewel.find(params[:id])

    render json: jewel, status: :ok
  end
end
