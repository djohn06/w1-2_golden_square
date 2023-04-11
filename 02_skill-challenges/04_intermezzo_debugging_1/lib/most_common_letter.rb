def get_most_common_letter(text)
  # Create new hash with default value = 0
  counter = Hash.new(0)
  # Take the text given and delete all spaces within it.
  str = text.delete(" ")
  # Use new spaceless text and turns to array using chars.
  str.chars.each do |char|
    # For each key(char) in the hash, increase the key's value by 1.
    counter[char] += 1
  end
# Convert hash(counter) into an array.
  array = counter.to_a
  # Sort the array by it's key and value with value being sorted.
  sorted_array = array.sort_by { |k, v| v }
  # As sort_by is ascending, reverse to get descending and use the first 
  # key which now has the highest value.
  sorted_array.reverse[0][0]
end

puts get_most_common_letter("the roof, the roof, the roof is on fire!")

# Intended output:
# 
# => get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"