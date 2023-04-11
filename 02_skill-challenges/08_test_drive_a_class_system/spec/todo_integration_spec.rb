require "todo_list"
require "todo"

RSpec.describe "integration" do
    context "adds todo tasks to list" do
        it "returns incomplete list" do
            list = TodoList.new
            task_1 = Todo.new("task 1")
            task_2 = Todo.new("task 2")
            list.add(task_1)
            list.add(task_2)
            expect(list.incomplete).to eq [task_1, task_2]
        end
    end
    
    context "#incomplete" do
        it "returns incomplete list" do
            list = TodoList.new
            task_1 = Todo.new("task 1")
            task_2 = Todo.new("task 2")
            list.add(task_1)
            list.add(task_2)
            expect(list.incomplete).to eq [task_1 , task_2]
        end
    end

    context "#complete" do
        it "returns completed todos list" do
            list = TodoList.new
            task = Todo.new("task 1")
            list.add(task)
            expect(list.complete).to eq [task]
        end

        it "returns todos in both completed and incomplete lists" do
            # Create a new instance when testing multiple methods (complete and incomplete).
            list_1 = TodoList.new
            list_2 = TodoList.new
            task_1 = Todo.new("task 1")
            task_2 = Todo.new("task 2")
            list_1.add(task_1)
            list_2.add(task_2)
            expect(list_1.incomplete).to eq [task_1]
            expect(list_2.complete).to eq [task_2]
        end
    end

    context "#give_up!" do
        it "marks all todos as completed" do
            list = TodoList.new
            task_1 = Todo.new("task 1")
            task_2 = Todo.new("task 2")
            list.add(task_1)
            list.add(task_2)
            expect(list.complete).to eq [task_1, task_2]
        end
    end

end