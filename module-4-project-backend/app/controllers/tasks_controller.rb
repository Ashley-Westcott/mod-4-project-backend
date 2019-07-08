class TasksController < ApplicationController

  def index
    @tasks = Task.all
    render json: @tasks
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new
    # (id: params[:id], user_id: params[:user_id], topic_id: params[:topic_id], title: params[:title], content: params[:content])
    @task.save

  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(id: params[:id], user_id: params[:user_id], topic_id: params[:topic_id], title: params[:title], content: params[:content])
    @task.save
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

  end


end
