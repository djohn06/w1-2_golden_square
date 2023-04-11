class Diary
    def initialize
      @entries = []
    end
  
    def add(entry) 
      @entries << entry
    end
  
    def all
      return @entries
    end
  
    def count_words
      # This means: each item in the @entries list will be gone through (&:), then 
      # calls on the method count_words, then 'sum' adds up all the numbers in response.
      return @entries.sum(&:count_words)
    end
  
    def reading_time(wpm)
      # Same formula as diary_entry. Add fail too.
      fail "WPM must be greater than 0." if wpm <= 0
      return (count_words / wpm.to_f).ceil
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
      readable_entries = @entries.filter do |entry|
        entry.reading_time(wpm) <= minutes
      end
      sorted_by_longest = readable_entries.sort_by do |entry|
        entry.count_words
    end
    sorted_by_longest.last
  end
end