class TasksController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_task, only: [:edit, :destroy, :show, :update]
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    if @task.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
    if @task.update_attributes(task_params)
      flash[:success] = 'successfull update'
      redirect_to @task
    else
      render 'edit'
    end
  end

  def destroy
    @task.destroy
    flash[:success] = 'user deleted'
    redirect_to root_path
  end

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :note, :completed)
  end
end
