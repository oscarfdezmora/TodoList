require_relative "../lib/Task"

describe Task do 
	

	describe "Pruebas de ToDO" do
    
  	before (:each) do
      @task = Task.new("Buy the milk")
  	end

	it "Una tarea recien creada es falsa" do
        expect(@task.completed?).to be_falsey
    end

	it "Si se usa complete, pasa a verdadera" do
        expect(@task.complete!).to be true
    end

    it "Se vuelve a poner como falsa" do
        expect(@task.make_incomplete!).to be_falsey
    end

    it "Se modifica el contenido" do
        @task.update_content!("Esta actualizado")
        expect(@task.content).to eq("Esta actualizado")
    end

	it "Se modifica el contenido otra vez" do
        @task.update_content!("Esta actualizado otra vez")
        expect(@task.updated_at).to be_truthy
        #Comprueba que no es false ni nil
    end
	end
end