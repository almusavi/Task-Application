class TasksController < ApplicationController

	def index
		@tasks = Task.all
	end

	def show
	end

	def new
	end

	def toggle_is_done
		@task = Task.find(params[:id])
		@task.is_done = true
		@task.save
		respond_to do |format|
		    format.html { redirect_to root_path }
		    format.js { }
		 end
	end

	def toggle_is_done
		@task = Task.find(params[:id])
		@task.is_done = true
		@task.save
		respond_to do |format|
		    format.html { redirect_to root_path }
		    format.js { }
		 end
	end

	def create
		@task = Task.new(task_params)
		@task.save
		
		respond_to do |format|
		    format.html { redirect_to root_path }
		    format.js { }
		  end
	end

	def destroy
		@task = Task.find params[:task]
	
		@task.destroy
		respond_to do |format|
			format.html { redirect_to root_path }
		    format.js { }
		  end
	end

	private
		def task_params
			params.require(:task).permit(:title)
		end

end
