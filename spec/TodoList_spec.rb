require_relative "../lib/TodoList"
require_relative "../lib/Task"

describe ToDoList do
	
	before (:each) do
      @task1 = Task.new("Buy the milk")
      @task2 = Task.new("Walk the dog")
      @list = ToDoList.new ("Oscar")
  	end

	describe "@add_task" do
		it "Comprueba que se ha añadido a la lista" do
			@list.add_task(@task1)
			expect(@list.is?(@task1)).to be true
		end

	end
 
	describe "@delete_task" do
		it "Comprueba si se borra la primera tarea" do
			@list.delete_task(1)
			expect(@list.is?(@task1)).to be false
		end
	end

	describe "@find_task_by_id" do
		it "Busca una tarea por ID" do
			@list.add_task(@task1)
			@list.add_task(@task2)
			task = @list.find_task_by_id(1)
			expect(task.content).to eq("Buy the milk")
		end

		it "Si se busca una task que no existe, devuleve nil" do
			expect(@list.find_task_by_id(19)).to be_falsey
		end
	end

	describe "@sort_by_created" do
		it "Comprueba que tras ordenarlos" do
			@list.add_task(@task1)
			@list.add_task(@task2)
			new_list = @list.sort_by_created
			expect(new_list[1]).to eq(@task2)
		end
	end

end