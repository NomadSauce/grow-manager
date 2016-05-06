class PlantdatsController < ApplicationController
  before_action :set_plant
  before_action :set_plantdat, only: [:show, :edit, :update, :destroy]

  # GET /plantdats
  # GET /plantdats.json
  def index
    @plantdats = Plantdat.all
  end

  # GET /plantdats/1
  # GET /plantdats/1.json
  def show
  end

  # GET /plantdats/new
  def new
    @plantdat = @plant.plantdats.new
  end

  # GET /plantdats/1/edit
  def edit
  end

  # POST /plantdats
  # POST /plantdats.json
  def create
    @plantdat = @plant.plantdats.create(plantdat_params)

    if @plantdat.save
      flash[:success] = "PLANT DATA UPDATED"

      # TODO: NEED A BETTER REDIRECT!
      redirect_to @plant
    else
      render :new
    end
  end

  # PATCH/PUT /plantdats/1
  # PATCH/PUT /plantdats/1.json
  def update
    respond_to do |format|
      if @plantdat.update(plantdat_params)
        format.html { redirect_to @plantdat, notice: 'Plantdat was successfully updated.' }
        format.json { render :show, status: :ok, location: @plantdat }
      else
        format.html { render :edit }
        format.json { render json: @plantdat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plantdats/1
  # DELETE /plantdats/1.json
  def destroy
    @plantdat.destroy
    redirect_to plant_path(@plant.id)

  end

  private
    # Use callbacks to share common setup or constraints between actions.


    def set_plant
      @plant = Plant.find(params[:plant_id])
    end

    def set_plantdat
      @plantdat = @plant.plantdats.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plantdat_params
      params.require(:plantdat).permit(:ambtemp, :foltempcur, :foltempmin, :foltempmax, :ph, :heatmat, :tds, :h202, :plant_id, :ambtempmin, :ambtembmax)
    end
end
