require_relative '../lib/todo_tasks.rb'

RSpec.describe TodoList do
    context "given no tasks" do
        # The 'x' before 'it' allows the test to be temporarily skipped.
        # Keeping it's test status as "pending".
        it "returns empty list" do
            todo_list = TodoList.new
            expect(todo_list.list).to eq []
        end
    end

    context "given a task" do
        it "has the task in the list" do
            todo_list = TodoList.new
            todo_list.add("Go to the shops")
            expect(todo_list.list).to eq ["Go to the shops"]
        end
    end

    context "given two tasks" do
        it "has the tasks in the list" do
            todo_list = TodoList.new
            todo_list.add("Go to the shops")
            todo_list.add("Take the bins out")
            expect(todo_list.list).to eq ["Go to the shops", "Take the bins out"]
        end
    end

    context "completing a task" do
        it "removes the task from the list" do
            todo_list = TodoList.new
            todo_list.add("Go to the shops")
            todo_list.add("Take the bins out")
            todo_list.completed("Go to the shops")
            expect(todo_list.list).to eq ["Take the bins out"]
        end
    end

    context "completing a non-existent task" do
        it "fails" do
            todo_list = TodoList.new
            todo_list.add("Go to the shops")
            expect { todo_list.completed("Take the bins out") }.to raise_error "Task doesn't exist."
        end
    end

end