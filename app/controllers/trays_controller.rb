class TraysController < ApplicationController
  before_filter :authenticate_user!
  before_action :set_tray, only: [:show, :edit, :update, :destroy]

  # GET /trays
  # GET /trays.json
  def index
    @trays = current_user.trays
  end

  # GET /trays/1
  # GET /trays/1.json
  def show
  end

  # GET /trays/new
  def new
    @tray = current_user.trays.build
  end

  # GET /trays/1/edit
  def edit
  end

  # POST /trays
  # POST /trays.json
  def create
    @tray = current_user.trays.build(tray_params)

    if @tray.save
      redirect_to trays_path
    else
      render 'new'
    end
  end

  # PATCH/PUT /trays/1
  # PATCH/PUT /trays/1.json
  def update
    respond_to do |format|
      if @tray.update(tray_params)
        format.html { redirect_to @tray, notice: 'Tray was successfully updated.' }
        format.json { render :show, status: :ok, location: @tray }
      else
        format.html { render :edit }
        format.json { render json: @tray.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trays/1
  # DELETE /trays/1.json
  def destroy
    @tray.destroy
    respond_to do |format|
      format.html { redirect_to trays_url, notice: 'Tray was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tray
      @tray = Tray.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tray_params
      params.require(:tray).permit(:title, :notes, :rescap, :category_id, :user_id, images_files: [] )
    end
end
