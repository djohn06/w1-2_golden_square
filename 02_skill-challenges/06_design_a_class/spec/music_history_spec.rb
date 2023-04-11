require "music_history"

RSpec.describe MusicHistory do
    context "no tracks have been inputted" do
        it "fails" do
            music_track = MusicHistory.new
            expect {(music_track.list) }.to raise_error "No tracks given."
        end
    end

    context "track(s) have been inputted" do
        it "add one track" do
            music_track = MusicHistory.new
            music_track.add("Thriller")
            expect(music_track.list).to eq "Thriller"
        end

        it "adds two tracks" do
            music_track = MusicHistory.new
            music_track.add("Thriller")
            music_track.add("Billie Jean")
            expect(music_track.list).to eq "Thriller, Billie Jean"
        end

        it "adds three tracks" do
            music_track = MusicHistory.new
            music_track.add("Thriller")
            music_track.add("Billie Jean")
            music_track.add("Smooth Criminal")
            expect(music_track.list).to eq "Thriller, Billie Jean, Smooth Criminal"
        end
    end

end