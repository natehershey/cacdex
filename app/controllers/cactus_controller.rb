class CactusController < ApplicationController
  # GET /cactus
  # GET /cactus.json
  def index
    @cactus = Cactu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cactus }
    end
  end

  # GET /cactus/1
  # GET /cactus/1.json
  def show
    @cactu = Cactu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cactu }
    end
  end

  # GET /cactus/new
  # GET /cactus/new.json
  def new
    @cactu = Cactu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cactu }
    end
  end

  # GET /cactus/1/edit
  def edit
    @cactu = Cactu.find(params[:id])
  end

  # POST /cactus
  # POST /cactus.json
  def create
    @cactu = Cactu.new(params[:cactu])

    respond_to do |format|
      if @cactu.save
        format.html { redirect_to @cactu, notice: 'Cactu was successfully created.' }
        format.json { render json: @cactu, status: :created, location: @cactu }
      else
        format.html { render action: "new" }
        format.json { render json: @cactu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cactus/1
  # PUT /cactus/1.json
  def update
    @cactu = Cactu.find(params[:id])

    respond_to do |format|
      if @cactu.update_attributes(params[:cactu])
        format.html { redirect_to @cactu, notice: 'Cactu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cactu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cactus/1
  # DELETE /cactus/1.json
  def destroy
    @cactu = Cactu.find(params[:id])
    @cactu.destroy

    respond_to do |format|
      format.html { redirect_to cactus_url }
      format.json { head :no_content }
    end
  end
end
