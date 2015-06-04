# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
#
# Difficulty: medium.

def nearby_az(string)

  # Iterate through each character in the incoming string
  string.each_char do |char|
    if char == "a"
      # We hit an "a", check the next 3 characters
      for i in 1..3 do
        # Use indexing of character on the string to check ahead
        if string[string.index(char) + i] == "z"
          # Return true if we found a matching case
          return true
        end
      end
    end
  end

  # Matching case not found
  return false
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nearby_az("baz") == true: ' + (nearby_az('baz') == true).to_s)
puts('nearby_az("abz") == true: ' + (nearby_az('abz') == true).to_s)
puts('nearby_az("abcz") == true: ' + (nearby_az('abcz') == true).to_s)
puts('nearby_az("a") == false: ' + (nearby_az('a') == false).to_s)
puts('nearby_az("z") == false: ' + (nearby_az('z') == false).to_s)
puts('nearby_az("za") == false: ' + (nearby_az('za') == false).to_s)