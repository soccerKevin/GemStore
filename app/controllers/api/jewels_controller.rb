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

  def create
    jewel = Jewel.new(jewel_params)

    if jewel.save
      render json: jewel, status: :created
    else
      render json: jewel.errors, status:  422
    end
  end

  def destroy
    jewel = Jewel.find(params[:id])
    jewel.destroy
    head 204
  end

private
  def jewel_params
    params.require(:jewel).permit(:name, :price)
  end
end
