require "todo"

RSpec.describe Todo do
    context "initializes a task as a string" do
        it "returns tasks as a string" do
            todo_task = Todo.new("Take the bins out")
            expect(todo_task.task).to eq "Take the bins out"
        end
    end

end