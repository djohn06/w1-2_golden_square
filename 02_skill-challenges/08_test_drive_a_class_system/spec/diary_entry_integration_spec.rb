require "diary_entry"
require "diary"

RSpec.describe "integration" do
    it "adds each entry into the diary" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("my title 1", "my contents 1")
        entry_2 = DiaryEntry.new("my title 2", "my contents 2")
        diary.add(entry_1)
        diary.add(entry_2)
        expect(diary.all).to eq [entry_1, entry_2]
    end

    describe "#count_words" do
        it "returns number of words in total diary entries" do
            diary = Diary.new
            entry_1 = DiaryEntry.new("my title 1", "my contents 1")
            entry_2 = DiaryEntry.new("my title 2", "my contents 2")
            diary.add(entry_1)
            diary.add(entry_2)
            expect(diary.count_words).to eq 6
        end
    end

    describe "#reading_time" do
        it "fails" do
            diary = Diary.new
            entry_1 = DiaryEntry.new("my title 1", "my contents 1")
            diary.add(entry_1)
            expect { diary.reading_time(0) }.to raise_error "WPM must be greater than 0."
        end

        it "calculatess the reading time for all entries" do
            diary = Diary.new
            entry_1 = DiaryEntry.new("my title 1", "my contents 1")
            entry_2 = DiaryEntry.new("my title 2", "my contents 2")
            diary.add(entry_1)
            diary.add(entry_2)
            expect(diary.reading_time(3)).to eq 2
        end

        it "calculatess the reading time for all entries to highest minute" do
            diary = Diary.new
            entry_1 = DiaryEntry.new("my title 1", "my contents 1")
            entry_2 = DiaryEntry.new("my title 2", "my contents 2")
            diary.add(entry_1)
            diary.add(entry_2)
            expect(diary.reading_time(4)).to eq 2 
        end
    end

    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.

    describe "best reading time entry behavious" do
        context "we have one entry that is readable in time given" do
            it "returns that entry" do
                diary = Diary.new
                entry_1 = DiaryEntry.new("my title 1", "my contents 1")
                diary.add(entry_1)
                result = diary.find_best_entry_for_reading_time(3, 1)
                expect(result).to eq entry_1
            end
        end

        context "we have one entry that is unreadable in time given" do
            it "returns nil" do
                diary = Diary.new
                entry_1 = DiaryEntry.new("my title 1", "my contents 1")
                diary.add(entry_1)
                result = diary.find_best_entry_for_reading_time(2, 1)
                expect(result).to eq nil
            end
        end

        context "we have multiple entries that are readable in time given" do
            it "returns longest entry the user can read" do
                diary = Diary.new
                best_entry = DiaryEntry.new("my title 1", "one two")
                diary.add(DiaryEntry.new("my title 1", "one"))
                diary.add(best_entry)
                diary.add(DiaryEntry.new("my title 1", "one two three"))
                diary.add(DiaryEntry.new("my title 1", "one two three four"))
                result = diary.find_best_entry_for_reading_time(2, 1)
                expect(result).to eq best_entry
            end
        end
    end

end