class TasksController < ApplicationController
  before_action :authenticate_user!
  def index
    @tasks = current_user.tasks
  end

  def new
    @task = Task.new(task_type: params[:task_type])
  end

  def show
    @task = current_user.tasks.find(params[:id])
  end

  def create
    @task = current_user.tasks.build(task_params)
    
    if @task.save
      redirect_to tasks_path, notice: 'タスクが作成されました。'
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @task = current_user.tasks.find(params[:id])
  end

  def update
    @task = current_user.tasks.find(params[:id])
    if @task.update(task_params)
      redirect_to root_path, notice: 'タスクが更新されました。'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    task = current_user.tasks.find(params[:id])
    task.destroy
    redirect_to root_path, notice: 'タスクが削除されました。'
  end

  private
  def task_params
    params.require(:task).permit(:name, :description, :due_date, :task_address, :task_type, :image)
  end
end
