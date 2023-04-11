def encode(plaintext, key)
  # Return key as an array and finds the unique values, then add to 
  # the array the alphabet without the key's letters.
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  # Take the plaintext - for each character take the 
  # index, add 65, then convert new number to the ASCII value.
  ciphertext_chars = plaintext.chars.map do |char|
    (65 + cipher.find_index(char)).chr
  end
  # Join the array of ASCII valued letters as a string.
  return ciphertext_chars.join
end
  
def decode(ciphertext, key)
  # Same cipher as the first method (see explaination above).
  cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
  # Same as above, map each of the characters of the encoded text. Then
  # convert each character as an ASCII value and minus 65 from it's value
  # to then give the index number of the cipher array.
  plaintext_chars = ciphertext.chars.map do |char|
    cipher[char.ord - 65]
  end
  # Finally, join the array of letters as a string.
  return plaintext_chars.join
end
 

# Intended output:
#
# > encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
# => "theswiftfoxjumpedoverthelazydog"
#
# > decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
  