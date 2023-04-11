require "music_library"
require "track"

RSpec.describe "integration" do
    it "adds and lists music tracks" do
        music_library = MusicLibrary.new
        track_1 = Track.new("title_1", "artist_1")
        track_2 = Track.new("title_2", "artist_2")
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.all).to eq([track_1, track_2])
    end

    it "searches tracks" do
        music_library = MusicLibrary.new
        track_1 = Track.new("one two three", "four five six")
        track_2 = Track.new("seven eight nine", "ten eleven twelve")
        music_library.add(track_1)
        music_library.add(track_2)
        expect(music_library.search("two")).to eq([track_1])
    end
end