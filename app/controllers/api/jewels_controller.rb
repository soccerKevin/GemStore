module API
  class JewelsController < ApplicationController
    def index
      jewels = Jewel.all

      render json: jewels, status: 200
    end
  end
end
