class GrowsController < ApplicationController
  before_action :set_grow, only: [:show, :edit, :update, :destroy]

  # GET /grows
  # GET /grows.json
  def index
    @grows = Grow.all
  end

  # GET /grows/1
  # GET /grows/1.json
  def show
  end

  # GET /grows/new
  def new
    @grow = Grow.new
  end

  # GET /grows/1/edit
  def edit
  end

  # POST /grows
  # POST /grows.json
  def create
    @grow = Grow.new(grow_params)

    respond_to do |format|
      if @grow.save
        format.html { redirect_to @grow, notice: 'Grow was successfully created.' }
        format.json { render :show, status: :created, location: @grow }
      else
        format.html { render :new }
        format.json { render json: @grow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grows/1
  # PATCH/PUT /grows/1.json
  def update
    respond_to do |format|
      if @grow.update(grow_params)
        format.html { redirect_to @grow, notice: 'Grow was successfully updated.' }
        format.json { render :show, status: :ok, location: @grow }
      else
        format.html { render :edit }
        format.json { render json: @grow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grows/1
  # DELETE /grows/1.json
  def destroy
    @grow.destroy
    respond_to do |format|
      format.html { redirect_to grows_url, notice: 'Grow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_grow
      @grow = Grow.find(params[:id])
    end

    #def cat_params
    #  params.require(:category).permit(:name)
    #end

    # Never trust parameters from the scary internet, only allow the white list through.
    def grow_params
      params.require(:grow).permit(:title, :notes, :category_id)
    end
end
