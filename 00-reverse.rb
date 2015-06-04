# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.
#
# Difficulty: easy.

def reverse(string)

  # Empty array
  result = []

  # Iterate through each character in the input string
  string.each_char do |char|
    result.unshift(char) # To reverse, force each char to the front
  end

  # Return the array compressed back into a string
  return result.join("")
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('reverse("abc") == "cba": ' + (reverse("abc") == "cba").to_s)
puts('reverse("a") == "a": ' + (reverse("a") == "a").to_s)
puts('reverse("") == "": ' + (reverse("") == "").to_s)