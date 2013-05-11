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

  # GET /drgs/new
  # GET /drgs/new.json
  def new
    @drg = Drg.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @drg }
    end
  end

  # GET /drgs/1/edit
  def edit
    @drg = Drg.find(params[:id])
  end

  # POST /drgs
  # POST /drgs.json
  def create
    @drg = Drg.new(params[:drg])

    respond_to do |format|
      if @drg.save
        format.html { redirect_to @drg, notice: 'Drg was successfully created.' }
        format.json { render json: @drg, status: :created, location: @drg }
      else
        format.html { render action: "new" }
        format.json { render json: @drg.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /drgs/1
  # PUT /drgs/1.json
  def update
    @drg = Drg.find(params[:id])

    respond_to do |format|
      if @drg.update_attributes(params[:drg])
        format.html { redirect_to @drg, notice: 'Drg was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @drg.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /drgs/1
  # DELETE /drgs/1.json
  def destroy
    @drg = Drg.find(params[:id])
    @drg.destroy

    respond_to do |format|
      format.html { redirect_to drgs_url }
      format.json { head :no_content }
    end
  end
end
