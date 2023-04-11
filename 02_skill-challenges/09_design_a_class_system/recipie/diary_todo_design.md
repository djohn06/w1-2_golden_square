1. Describe the Problem
Typically you will be given a short statement that does this called a user story. In industry, you may also need to ask further questions to clarify aspects of the problem.

> As a user
> So that I can record my experiences
> I want to keep a regular diary

> As a user
> So that I can reflect on my experiences
> I want to read my past diary entries

> As a user
> So that I can reflect on my experiences in my busy day
> I want to select diary entries to read based on how much time I have and my reading speed

> As a user
> So that I can keep track of my tasks
> I want to keep a todo list along with my diary

> As a user
> So that I can keep track of my contacts
> I want to see a list of all of the mobile phone numbers in all my diary entries


2. Design the Class System
Design the interfaces of each of your classes and how they will work together to achieve the job of the program. You can use diagrams to visualise the relationships between classes.

Consider pulling out the key verbs and nouns in the problem description to help you figure out which classes and methods to have.

Steps 3, 4, and 5 then operate as a cycle.

```ruby
class Diary
    def initialize
        # store the initial values here
    end

    def add(entry)
        # add the entry here
        # no return value
    end

    def read
        # return all diary entries
    end

    def read_entry(time, wpm)
        # returns an entry that can be read in the time given
    end

    def read_todos
        # return todo entries from the Todo class
    end

    def view_contacts
        # returns all contacts
    end
end

end

class Todo
    def initialize(task)
        # store the initial values here
    end

end

class Contacts
    def add_contact(number)
        # number is a string containing a phone number
    end

end

```

3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

Encode one of these as a test and move to step 4.

```ruby
require "diary"
require "todo"

RSpec.describe "integration" do
    context "add todos into the diary" do
        it "returns in read_todos method" do
        diary = Diary.new
        todo_1 = Todo.new("task 1")
        todo_2 = Todo.new("task 2")
        diary.add(todo_1)
        diary.add(todo_2)
        expect(diary.read).to eq [todo_1, todo_2]
        end
    end

end

```

4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

Encode one of these as a test and move to step 5.

```ruby
require "diary"

RSpec.describe Diary do
    context "add multiple diary entries" do
        it "returns entries in read method" do
        diary = Diary.new
        diary.add("entry 1")
        diary.add("entry 2")
        expect(diary.read).to eq ["entry 1", "entry 2"]
        end
    end

end

```

5. Implement the Behaviour
For each example you create as a test, implement the behaviour that allows the class to behave according to your example.

Then return to step 3 until you have addressed the problem you were given. You may also need to revise your design, for example if you realise you made a mistake earlier.