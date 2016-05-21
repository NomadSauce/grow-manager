class TrayCyclesController < ApplicationController
  before_action :set_tray
  before_action :set_tray_cycle, only: [:show, :edit, :update, :destroy]

  # GET /tray_cycles
  # GET /tray_cycles.json
  def index
    @tray_cycles = TrayCycle.all
  end

  # GET /tray_cycles/1
  # GET /tray_cycles/1.json
  def show
  end

  # GET /tray_cycles/new
  def new
    @tray_cycle = @tray.tray_cycles.new
  end

  # GET /tray_cycles/1/edit
  def edit
  end

  # POST /tray_cycles
  # POST /tray_cycles.json
  def create
    @tray_cycle = @tray.tray_cycles.create(tray_cycle_params)

    respond_to do |format|
      if @tray_cycle.save
        format.html { redirect_to :back, notice: 'Tray cycle was successfully created.' }
        format.json { render :show, status: :created, location: @tray_cycle }
      else
        format.html { render :new }
        format.json { render json: @tray_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tray_cycles/1
  # PATCH/PUT /tray_cycles/1.json
  def update
    respond_to do |format|
      if @tray_cycle.update(tray_cycle_params)
        format.html { redirect_to :back, notice: 'Tray cycle was successfully updated.' }
        format.json { render :show, status: :ok, location: @tray_cycle }
      else
        format.html { render :edit }
        format.json { render json: @tray_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tray_cycles/1
  # DELETE /tray_cycles/1.json
  def destroy
    @tray_cycle.destroy
    respond_to do |format|
      format.html { redirect_to @tray, notice: 'Tray cycle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_tray
      @tray = Tray.find(params[:tray_id])
    end

    def set_tray_cycle
      @tray_cycle = TrayCycle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tray_cycle_params
      params.require(:tray_cycle).permit(:title, :tray_id, schedule_attributes: Schedulable::ScheduleSupport.param_names)
    end
end
