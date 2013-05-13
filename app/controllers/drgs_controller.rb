class DrgsController < ApplicationController
  # GET /drgs
  # GET /drgs.json
  def index
    @drgs = Drg.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @drgs }
    end
  end

  # GET /drgs/1
  # GET /drgs/1.json
  def show
    @drg = Drg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @drg }
    end
  end

end
