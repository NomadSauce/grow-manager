class PicsController < ApplicationController

  before_action :set_pic, only: [:show, :edit, :update, :destroy]

  def index
    @pics = Pic.all
  end

  def new
    @pic = Pic.new
  end

  def show
  end

  def update
    if @pic.update(pic_params)
      redirect_to @pic
    else
      render :new
    end
  end

  def destroy
    @pic.destroy
    redirect_to pics_path
  end

  def create
    @pic = Pic.new(pic_params)

    if @pic.save
      redirect_to @pic, notice: "PHOTO SUCCESSFULLY SAVED"
    else
      render :new
    end
  end

  private

    def pic_params
      params.require(:pic).permit(:title, :description)
    end

    def set_pic
      @pic = Pic.find(params[:id])
    end
end
