class DiaryEntry

    def initialize(title, contents)
        @title = title
        @contents = contents
        @last_word_read = 0
    end

    def title
        @title
    end

    def contents
        @contents
    end

    def count_words
        @contents.split.size
    end

    def reading_time(wpm)
        (count_words/wpm.to_f).ceil
    end

    def reading_chunk(wpm, minutes)
        chunk = wpm * minutes
        furthest_point_read = @last_word_read + chunk
        words = contents.split[@last_word_read, furthest_point_read]
        @last_word_read += chunk
        if furthest_point_read >= count_words
            @last_word_read = 0
        else
            @last_word_read = furthest_point_read
        end
        return words.join(" ")
    end
end