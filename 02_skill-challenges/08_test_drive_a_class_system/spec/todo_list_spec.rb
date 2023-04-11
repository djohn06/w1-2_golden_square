require "todo_list"

RSpec.describe TodoList do
    context "when there are no todos" do
        it "returns an empty array" do 
            lists = TodoList.new 
            expect(lists.incomplete).to eq([])
        end
    end
end