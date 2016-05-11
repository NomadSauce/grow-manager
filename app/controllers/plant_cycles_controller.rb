class PlantCyclesController < ApplicationController
  before_action :set_plant
  before_action :set_plant_cycle, only: [:show, :edit, :update, :destroy]

  # GET /plant_cycles
  # GET /plant_cycles.json
  def index
    @plant_cycles = PlantCycle.all
  end

  # GET /plant_cycles/1
  # GET /plant_cycles/1.json
  def show
  end

  # GET /plant_cycles/new
  def new
    @plant_cycle = @plant.plant_cycles.new
  end

  # GET /plant_cycles/1/edit
  def edit
  end

  # POST /plant_cycles
  # POST /plant_cycles.json
  def create
    @plant_cycle = @plant.plant_cycles.create(plant_cycle_params)

    respond_to do |format|
      if @plant_cycle.save
        format.html { redirect_to :back, notice: 'Plant cycle was successfully created.' }
        format.json { render :show, status: :created, location: @plant_cycle }
      else
        format.html { render :new }
        format.json { render json: @plant_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_cycles/1
  # PATCH/PUT /plant_cycles/1.json
  def update
    respond_to do |format|
      if @plant_cycle.update(plant_cycle_params)
        format.html { redirect_to @plant_cycle, notice: 'Plant cycle was successfully updated.' }
        format.json { render :show, status: :ok, location: @plant_cycle }
      else
        format.html { render :edit }
        format.json { render json: @plant_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_cycles/1
  # DELETE /plant_cycles/1.json
  def destroy
    @plant_cycle.destroy
    respond_to do |format|
      format.html { redirect_to @plant, notice: 'Plant cycle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private


    # Use callbacks to share common setup or constraints between actions.
    def set_plant
      @plant = Plant.find(params[:plant_id])
    end



    def set_plant_cycle
      @plant_cycle = PlantCycle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_cycle_params
      params.require(:plant_cycle).permit(:title, :interval, :frequency, :plant_id)
    end
end
