class TodosController < ApplicationController
	def index 
		@todos = Todo.all 
	end

	def new
		@user = params[:uid]
		@todo = Todo.new
	end

	def user
		@user = params[:uid]
		@todos = Todo.where(uid: params[:uid])
	end

	def create
		@todo = Todo.new(todo_params)
		if @todo.save
			redirect_to '/todos'
		else
			render 'new'
		end
	end

	def edit
		@user = params[:uid]
		@todo = Todo.find_by! id: params[:id]
	end

	def update
		@todo = Todo.update(params[:id], todo_params)
		if @todo.save
			redirect_to '/todos'
		else
			render 'edit'
		end
	end

	def delete
		Todo.delete(params[:id])
		redirect_to '/todos'
	end

	private 
	  def todo_params 
	    params.require(:todo).permit(:content, :uid)
	  end

end
