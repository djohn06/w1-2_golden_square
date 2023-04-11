require "grammer_improve"

RSpec.describe "check if sentence is gramatically correct" do
    context "checks for an empty string" do
        it "fails" do
        expect { grammer_check("") }.to raise_error "Not a sentence."
        end
    end

    context "if the first word is not capitalized" do
        it "returns false" do
            result = grammer_check("what are we doing today?")
            expect(result).to eq false
        end
    end

    context "if the sentence-ending puncutation mark is not present" do
        it "returns false" do
            result = grammer_check("Check it out")
            expect(result).to eq false
        end
    end

    context "if capitalised first letter and ends with '!'" do
        it "returns true" do
            result = grammer_check("It was great seeing you today!")
            expect(result).to eq true
        end
    end

    context "if capitalised first letter and ends with '?'" do
        it "returns true" do
            result = grammer_check("How about trying it again?")
            expect(result).to eq true
        end
    end

    context "if capitalised first letter and ends with '.'" do
        it "returns true" do
            result = grammer_check("Now let me get my glasses.")
            expect(result).to eq true
        end
    end
end
