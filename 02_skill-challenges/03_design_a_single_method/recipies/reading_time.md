# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user strory here. Add any clarifying notes you might have._

> As a user
> So that I can manage my time
> I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
reading_minutes = reading_time(words)

# * words is the number(integer) of words in the text given i.e. words = 352
# * reading_minutes is how long it will take for the user to read the text i.e. reading_time = 1.32
# * reading_time is the method
```


## 3. Create Examples as Texts

_Make a list of examples of what the method will take and return_

```ruby
# 1
reading_time(0)
# => 0

# 2
reading_time(50)
# => 1

# 3
reading_time(200)
# => 1

# 4
reading_time(300)
# => 2

# 5
reading_time(13972)
# => 70


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving provess of red, green, refactor to implement the behaviour._


