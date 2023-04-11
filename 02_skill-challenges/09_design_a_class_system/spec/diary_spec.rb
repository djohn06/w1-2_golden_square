require "diary"

RSpec.describe Diary do
    context "add multiple diary entries" do
        it "returns entries in read method" do
        diary = Diary.new
        diary.add("entry 1")
        diary.add("entry 2")
        expect(diary.read).to eq ["entry 1", "entry 2"]
        end
    end

end