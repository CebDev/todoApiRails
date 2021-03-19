class TodosController < ActionController::API

  def index
    render :json => Todo.all
  end

  def create
    todo = Todo.create(todo_params)
    todo.save
    render :json => todo
  end

  def show
    render :json => Todo.find(params[:id])
  end

  def update
    todo = Todo.find(params[:id])
    todo.update_attributes(todo_params)
    render :json => todo
  end

  def destroy_all
    Todo.destroy_all
  end

  def destroy
    todo = Todo.find(params[:id])
    todo.destroy
    render :json => {}
  end

  private

  def todo_params
    params.permit(:text, :done)
  end

end