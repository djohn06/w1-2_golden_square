require "grammer_stats"

RSpec.describe GrammarStats do
    # Start with the fail test since it tends to be easiest to get out the way
    it "fails" do
        submit_text = GrammarStats.new
        # Remember the curly brackets and the space after 'expect'!
        expect {submit_text.check("")}.to raise_error "Not a sentence."
    end

    # Describe "#method", then context, then it. Remember the order.
    describe "#check" do
        context "recognises an gramatically incorrect sentence" do
            it "returns false" do
                submit_text = GrammarStats.new
                result = submit_text.check("Hello world")
                expect(result).to eq false
            end
        end

        context "recognises a gramatically correct sentence" do
            it  "returns true" do
                submit_text = GrammarStats.new
                result = submit_text.check("Hello, World!")
                expect(result).to eq true
            end
        end
    end

    describe "#percentage_good" do
        context "all sentences are gramatically correct" do
            it "returns 100" do
                submit_text = GrammarStats.new
                submit_text.check("Hello there.")
                submit_text.check("Hello, World!")
                result = submit_text.percentage_good
                expect(result).to eq 100
            end
        end

        context "all sentences are gramatically incorrect" do
            it "returns 0" do
                submit_text = GrammarStats.new
                submit_text.check("Hello there")
                submit_text.check("ello, World")
                result = submit_text.percentage_good
                expect(result).to eq 0
            end
        end

        context "half the sentences are gramatically correct" do
            it "returns 50" do
                submit_text = GrammarStats.new
                submit_text.check("Hello there.")
                submit_text.check("ello, World")
                result = submit_text.percentage_good
                expect(result).to eq 50
            end
        end
    end
end