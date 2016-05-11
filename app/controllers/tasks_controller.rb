class TasksController < ApplicationController
  before_action :set_plant
  before_action :set_task, except: [:create]


  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = @plant.tasks.build(task_params)
  end

  # GET /tasks/new
  def new
  end

  # GET /tasks/1/edit
  def edit
  end

  # POST /tasks
  # POST /tasks.json
  def create

    @task = @plant.tasks.create(task_params)
    if @task.save

      redirect_to @plant
    end
  end

  def complete
    @task.update_attribute(:completed_at, Time.now)
    redirect_to @plant, notice: "TASK WAS COMPLETED"

  end


  def update
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @task }
      else
        format.html { render :edit }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task = @plant.tasks.find(params[:id])
    if @task.destroy
      flash[:success] = "TASK WAS DELETED"
      redirect_to @plant
    else
      flash[:danger] = "TASK WAS NOT DELETED"
    end


  end

  private
    # Use callbacks to share common setup or constraints between actions.

    def set_plant
      @plant = Plant.find(params[:plant_id])
    end

    def set_task
      @task = @plant.tasks.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:title, :plant_id, :tray_id, :due_date )
    end
end
