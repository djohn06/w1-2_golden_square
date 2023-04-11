require "diary"
require "todo"

RSpec.describe "integration" do
    context "add entries into the diary" do
        it "returns in read_todos method" do
        diary = Diary.new
        todo_1 = Todo.new("task 1")
        todo_2 = Todo.new("task 2")
        diary.add(todo_1)
        diary.add(todo_2)
        expect(diary.read_todos).to eq [todo_1, todo_2]
        end
    end



end