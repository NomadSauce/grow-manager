class NutrientCalcsController < ApplicationController
  before_action :set_nutrient_calc, only: [:show, :edit, :update, :destroy]

  # GET /nutrient_calcs
  # GET /nutrient_calcs.json
  def index
    @nutrient_calcs = NutrientCalc.all
  end

  # GET /nutrient_calcs/1
  # GET /nutrient_calcs/1.json
  def show
  end

  # GET /nutrient_calcs/new
  def new
    @nutrient_calc = NutrientCalc.new
  end

  # GET /nutrient_calcs/1/edit
  def edit
  end

  # POST /nutrient_calcs
  # POST /nutrient_calcs.json
  def create
    @nutrient_calc = NutrientCalc.new(nutrient_calc_params)

    respond_to do |format|
      if @nutrient_calc.save
        format.html { redirect_to @nutrient_calc, notice: 'Nutrient calc was successfully created.' }
        format.json { render :show, status: :created, location: @nutrient_calc }
      else
        format.html { render :new }
        format.json { render json: @nutrient_calc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nutrient_calcs/1
  # PATCH/PUT /nutrient_calcs/1.json
  def update
    respond_to do |format|
      if @nutrient_calc.update(nutrient_calc_params)
        format.html { redirect_to @nutrient_calc, notice: 'Nutrient calc was successfully updated.' }
        format.json { render :show, status: :ok, location: @nutrient_calc }
      else
        format.html { render :edit }
        format.json { render json: @nutrient_calc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nutrient_calcs/1
  # DELETE /nutrient_calcs/1.json
  def destroy
    @nutrient_calc.destroy
    respond_to do |format|
      format.html { redirect_to nutrient_calcs_url, notice: 'Nutrient calc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nutrient_calc
      @nutrient_calc = NutrientCalc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nutrient_calc_params
      params.require(:nutrient_calc).permit(:product, :vegtime, :flowertime, :rezsize, :rezunits, :aerstone, :outputunits, :nutrient_id)
    end
end
