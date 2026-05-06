class TasksController < ApplicationController

  before_action :authenticate_user!
  def index
    @tasks = current_user.tasks.order(due_date: :asc)
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

  def select_template
    @old_tasks = TaskTemplate::REQUIRED_TASKS.select { |t| t[:type] == 0 }
    @new_tasks = TaskTemplate::REQUIRED_TASKS.select { |t| t[:type] == 1 }

    @grouped_old_tasks = @old_tasks.group_by { |t| t[:category_id] }
    @grouped_new_tasks = @new_tasks.group_by { |t| t[:category_id] }
  end

  def bulk_create
    selected_ids = params[:task_ids] ||[]

    selected_ids.each do |id|
      template = TaskTemplate::REQUIRED_TASKS.find { |t| t[:id] == id.to_i }
      next unless template

      if template[:type] == 0
        base_date = current_user.move_out_date
      else
        base_date = current_user.move_in_date
      end
      next unless base_date

      current_user.tasks.create!(
        name: template[:name],
        due_date: base_date + template[:days_offset].days,
        status_id: template[:status_id],
        task_type: template[:type],
        category_id: template[:category_id]
      )
    end
    redirect_to root_path, notice: '選択したタスクを追加しました。'
  end

  private
  def task_params
    params.require(:task).permit(:name, :description, :due_date, :task_address, :task_type, :image,:status_id, :category_id)
  end

end
