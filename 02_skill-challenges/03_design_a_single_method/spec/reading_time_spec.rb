require "reading_time.rb"

RSpec.describe "reading time rounded up in minutes"
    context "given an empty value" do
        it "returns zero" do
            result = reading_time(0)
            expect(result).to eq 0
        end
    end

    context "given a text of under 200 words" do
        it "rounds up to one" do
            result = reading_time(50)
            expect(result).to eq 1
        end
    end

    context "given a text of under 200 words" do
        it "rounds up to one" do
            result = reading_time(200)
            expect(result).to eq 1
        end
    end

    context "given a text of under 200 words" do
        it "rounds up to one" do
            result = reading_time(300)
            expect(result).to eq 2
        end
    end

    context "given a text of under 200 words" do
        it "rounds up to one" do
            result = reading_time(13972)
            expect(result).to eq 70
        end
    end
