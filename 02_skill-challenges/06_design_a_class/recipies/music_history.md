# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user strory here. Add any clarifying notes you might have._

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Design the Method Signature

_Include the initializer and public methods with all parameters and return values._

# EXAMPLE

```ruby

class MusicHistory
  def initialize

  end

  def add(track)
    # No return value
  end

  def list
    # Fail if no tracks have been added.
    # Otherwise, return a string of the tracks the user has listened to.
  end

end

```


## 3. Create Examples as Texts

_Make a list of examples of what the method will take and return_

```ruby
# 1
music_track = MusicHistory.new
expect {(music_track.add("")) }.to raise_error "No tracks given."

# 2
music_track = MusicHistory.new
result = music_track.add("Thriller")
expect(result).to eq "Thriller"

# 3
music_track = MusicHistory.new
music_track.add("Thriller")
result = music_track.add("Billie Jean")
expect(result).to eq "Thriller, Billie Jean"


```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving provess of red, green, refactor to implement the behaviour._


