class CactiController < ApplicationController
  # GET /cacti
  # GET /cacti.json
  def index
    @cacti = Cactus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cacti }
    end
  end

  # GET /cacti/1
  # GET /cacti/1.json
  def show
    @cactus = Cactus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cactus }
    end
  end

  # GET /cacti/new
  # GET /cacti/new.json
  def new
    @cactus = Cactus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cactus }
    end
  end

  # GET /cacti/1/edit
  def edit
    @cactus = Cactus.find(params[:id])
  end

  # POST /cacti
  # POST /cacti.json
  def create
    @cactus = Cactus.new(params[:cactus])

    respond_to do |format|
      if @cactus.save
        format.html { redirect_to @cactus, notice: 'Cactus was successfully created.' }
        format.json { render json: @cactus, status: :created, location: @cactus }
      else
        format.html { render action: "new" }
        format.json { render json: @cactus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cacti/1
  # PUT /cacti/1.json
  def update
    @cactus = Cactus.find(params[:id])

    respond_to do |format|
      if @cactus.update_attributes(params[:cactus])
        format.html { redirect_to @cactus, notice: 'Cactus was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cactus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cacti/1
  # DELETE /cacti/1.json
  def destroy
    @cactus = Cactus.find(params[:id])
    @cactus.destroy

    respond_to do |format|
      format.html { redirect_to cacti_url }
      format.json { head :no_content }
    end
  end
end
