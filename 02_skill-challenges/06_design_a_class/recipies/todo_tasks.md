# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user strory here. Add any clarifying notes you might have._

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Method Signature

_Include the initializer and public methods with all parameters and return values._

```ruby

class TodoList
  def initialize
    
  end

  def add(task)
    # Return nothing
  end

  def list
    # Return list of tasks as a string
  end

  def completed(tasks)
    # Returns nothing
    # Fails if the task doesn't exist
  end

end
```

## 3. Create Examples as Texts

_Make a list of examples of what the method will take and return_

```ruby
# 1
todo_list = TodoList.new
todo_list.list # => []

# 2
todo_list = TodoList.new
todo_list.add("Go to the shops")
todo_list.list # => ["Go to the shops"]

# 3
todo_list = TodoList.new
todo_list.add("Go to the shops")
todo_list.add("Take the bins out")
todo_list.list # => ["Go to the shops", "Take the bins out"]

# 4
todo_list = TodoList.new
todo_list.add("Go to the shops")
todo_list.complete("Take the bins out") # =>"Task doesn't exist."

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving provess of red, green, refactor to implement the behaviour._


