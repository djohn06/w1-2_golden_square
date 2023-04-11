# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user strory here. Add any clarifying notes you might have._



## 2. Design the Method Signature

_Include the initializer and public methods with all parameters and return values._

# EXAMPLE

class Reminder
  def initialize(name) # name is a string
    # ...
  end

  def remind_me_to(task) # task is a string
    # No return value
  end

  def remind()
    # Throws an exception if no task is set
    # Otherwise, returns a string reminding the user to do the task
  end
end



## 3. Create Examples as Texts

_Make a list of examples of what the method will take and return_



_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving provess of red, green, refactor to implement the behaviour._


