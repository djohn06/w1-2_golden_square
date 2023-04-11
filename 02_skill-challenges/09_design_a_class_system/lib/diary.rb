class Diary
    def initialize
        @diary = []
        @task_list = []
    end

    def add(entry)
        # add the entry here
        # no return value
        @diary << entry
    end

    def read
        # return all diary entries
        @diary
    end

    def read_entry(time, wpm)
        # returns an entry that can be read in the time given
    end

    def read_todos
        # return todo entries from the Todo class
        @task_list
    end

    def view_contacts
        # returns all contacts
    end
end