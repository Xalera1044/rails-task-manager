class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def new
    @tasks = Task.new
  end

  def edit
  end


  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path

  end

  def update

  end

  def show
  end

  private

  def task_params
    params.require(:task).permit(:title, :description, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
