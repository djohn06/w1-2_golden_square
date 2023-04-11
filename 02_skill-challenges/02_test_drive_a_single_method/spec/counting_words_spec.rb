require "counting_words"

RSpec.describe "counting number of words" do
    it "returns 0 in empty string" do
        expect(count_words("")).to eq 0
    end

    it "returns number of words in a small phrase" do
        str = "Say my name."
        expect(count_words(str)).to eq 3
    end
    
    it "returns number of words in a larger string" do
        str = "How many times do we have to teach you this lesson, old man!"
        expect(count_words(str)).to eq 13
    end
end