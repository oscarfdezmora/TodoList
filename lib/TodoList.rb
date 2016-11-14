
class ToDoList
	attr_reader :tasks, :user, :todo_store
	def initialize (user)
		@tasks = []
		@user = user
	end

	def add_task tarea
		@tasks << tarea
	end

	def is? tarea
		@tasks.include?(tarea)
	end

	def delete_task id
		@tasks.delete_at(id -1)
	end

	def find_task_by_id id
		@tasks[id -1]
	end

	def sort_by_created
		@tasks.sort { | task1, task2 | task1.created_at <=> task2.created_at }
	end

	def save
		@todo_store[@user] = @tasks
	end

end
