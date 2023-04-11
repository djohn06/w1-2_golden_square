class TodoList
    def initialize
        @list = []
    end
  
    def add(todo) 
        @list << todo
    end
  
    def incomplete
        # Returns all non-done todos
        return @list.each(&:done?)
    end
  
    def complete
        # Returns all complete todos
        return @list.each(&:mark_done!)
    end
  
    def give_up!
        # Marks all todos as complete
        @list.each(&:mark_done!)
    end
  end
