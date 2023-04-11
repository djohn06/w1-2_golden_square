# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user strory here. Add any clarifying notes you might have._

> As a user
> So that I can keep track of my tasks
> I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
task_tracker = to_do(input)

# * input will be the task we input
# * task_tracker tracks the task we input
# * to_do is the method we use
```


## 3. Create Examples as Texts

_Make a list of examples of what the method will take and return_

```ruby
# 1
# task_tracker = to_do("") =>  fail "Not a task."

# 2
# task_tracker = to_do("Take the shopping in.") => false

# 3
# task_tracker = to_do("#TODO Take the shopping in.") => true

```


_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving provess of red, green, refactor to implement the behaviour._
