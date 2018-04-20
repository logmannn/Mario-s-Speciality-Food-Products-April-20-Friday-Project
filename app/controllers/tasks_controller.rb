class TasksController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @task = @product.tasks.new
  end

  def create
    @product = Product.find(params[:product_id])
    @task = @product.tasks.new(task_params)
    if @task.save
      redirect_to product_path(@task.product)
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:product_id])
    @task = Task.find(params[:id])
    render :edit
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to products_path
  end

private
  def task_params
    params.require(:task).permit(:description)
  end
end
