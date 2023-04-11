require "personal_diary"

RSpec.describe "personal diary system" do
    it "returns full string less than 5 words" do
        result = make_snippet("Went shopping")
        expect(result).to eq "Went shopping"
    end

    it "returns full string equal to 5 words" do
        result = make_snippet("I got home at 5.")
        expect(result).to eq "I got home at 5."
    end

    it "returns string with 5 words and ellipsis" do
        result = make_snippet("Saw all my friends at the party")
        expect(result).to eq "Saw all my friends at..."
    end
end