class MusicHistory
    def initialize
        @tracks = []
    end

    def add(track)
        @tracks << track
    end

    def list
        fail "No tracks given." if @tracks.empty?
        @tracks.join(", ")
    end
  
end