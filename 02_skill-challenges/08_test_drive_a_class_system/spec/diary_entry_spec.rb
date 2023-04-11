require "diary_entry"

RSpec.describe "calculating how much text the user can read within the minutes provided" do
    it "constructs" do
        diary_entry = DiaryEntry.new("my_title", "my_contents")
        expect(diary_entry.title).to eq "my_title"
        expect(diary_entry.contents).to eq "my_contents"
    end

    describe "#count_words" do
        it "returns the number of words in the contents as an integer" do
            diary_entry = DiaryEntry.new("my_title", "one two three")
            expect(diary_entry.count_words).to eq 3
        end

        it "returns 0 when contents is empty" do
            diary_entry = DiaryEntry.new("my_title", "")
            expect(diary_entry.count_words).to eq 0
        end
    end

    describe "#reading_time" do
        context "gives a reading time to the minute" do
            it "returns length of time reading contents" do
                diary_entry = DiaryEntry.new("my_title", "one two three four five")
                wpm = 5
                expect(diary_entry.reading_time(wpm)).to eq 1
            end

            it "returns length of time reading large contents" do
                diary_entry = DiaryEntry.new("my_title", "one " * 2500)
                wpm = 200
                expect(diary_entry.reading_time(wpm)).to eq 13
            end
        end
    end
    
    describe "#reading_chunk" do
        context "provides chunk of text user can read in allocated time" do
            it "returns the whole text" do
                diary_entry = DiaryEntry.new("my_title", "one two three four five")
                wpm = 5
                minutes = 1
                expect(diary_entry.reading_chunk(wpm, minutes)).to eq "one two three four five"
            end
        end

        context "provides chunk of text user cannot read in allocated time" do
            it "returns part of the text" do
                diary_entry = DiaryEntry.new("my_title", "one two three four five")
                result = diary_entry.reading_chunk(3, 1)
                expect(result).to eq "one two three"
            end

            it "returns next part of the text" do
                diary_entry = DiaryEntry.new("my_title", "one two three four five")
                diary_entry.reading_chunk(3, 1)
                result = diary_entry.reading_chunk(3, 1)
                expect(result).to eq "four five"
            end
            
            it "restart after reading contents" do
                diary_entry = DiaryEntry.new("my_title", "one two three four five")
                diary_entry.reading_chunk(3, 1)
                diary_entry.reading_chunk(3, 1)
                result = diary_entry.reading_chunk(3, 1)
                expect(result).to eq "one two three"
            end
        end
    end
end