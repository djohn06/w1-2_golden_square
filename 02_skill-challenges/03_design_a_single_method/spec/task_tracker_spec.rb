require "task_tracker"

RSpec.describe "to_do" do
    context "when no task is input" do
        it "fails" do
            expect {to_do("")}.to raise_error "Not a task."
        end
    end

    context "false test, no #TODO in string" do
        it "returns false" do
            result = to_do("Take the shopping in.")
            expect(result).to eq false
        end
    end

    context "true test, #TODO in string" do
        it "returns true" do
            result = to_do("#TODO Take the shopping in.")
            expect(result).to eq true
        end
    end
end