# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user strory here. Add any clarifying notes you might have._

> As a user
> So that I can improve my grammar
> I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby
correct_grammer = grammer_check(text)

# * text is the text(string) given to check if the grammer is correct
# * correct_grammer is the response as to whether the text is gramatically correct
# * grammer_check is the method
```

## 3. Create Examples as Texts

_Make a list of examples of what the method will take and return_

```ruby
# 1
grammer_check("")
# => fail "Not a sentence"

# 2
grammer_check("what are we doing today?")
# => false

# 3
grammer_check("Check it out")
# => false

# 4
grammer_check("It was great seeing you today!")
# => true

# 5
grammer_check("How about trying it again?")
# => true

# 6
grammer_check("Now let me get my glasses.")
# => false

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving provess of red, green, refactor to implement the behaviour._
