class TasksController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, only: :create

  def create
    @task = @project.tasks.create(task_params)

    if @task.errors.any?
      render partial: 'errors', locals: { task: @task }, status: :unprocessable_entity
    else
      redirect_to @project
    end
  end

  private

  def set_project
    @project = current_user.projects.find(params[:project_id])
  end

  def task_params
    params.require(:task).permit(:content)
  end
end
