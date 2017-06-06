class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :find_task, only: [:edit, :destroy, :show, :update]

  # after_action :verify_authorized, except: :index
  # after_action :verify_policy_scoped, only: :index

  def index
    if params[:q].blank?
      @tasks = policy_scope(Task).all
    else
      @tasks = policy_scope(Task).search(params[:q])
    end
  end

  def new
    @task = Task.new
  end

  def create
    @task = current_user.tasks.build(task_params)
    if @task.save
      flash[:notice] = 'successfully created task'
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show; end

  def edit; end

  def update
    authorize @task
    if @task.update_attributes(task_params)
      flash[:notice] = 'successfull update'
      redirect_to root_path
    else
      flash[:notice] = 'failed update'
      render 'edit'
    end
  end

  def destroy
    authorize @task, :destroy
    @task.destroy
    flash[:success] = 'user deleted'
    redirect_to root_path
  end

  def find_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :note, :completed, :aasm_state)
  end
end
