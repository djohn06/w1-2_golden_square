class TodoList
    def initialize
        @tasks = []
    end

    def add(task)
        @tasks << task
    end

    def list
        return @tasks
    end

    def completed(task)
        fail "Task doesn't exist." unless @tasks.include? task
        @tasks.delete(task)
    end

end