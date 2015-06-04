# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
#
# Difficulty: easy.

def palindrome?(string)

  # Array to hold our reversed string
  reverse = []

  # Iterate through each character in the input string
  string.each_char do |char|
    reverse.unshift(char) # To reverse, force each char to the front
  end

  # Convert the reversed array back into a string
  reverse = reverse.join("")

  # Ternary comparison
  string == reverse ? (return true) : (return false)

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('palindrome?("abc") == false: ' + (palindrome?('abc') == false).to_s)
puts('palindrome?("abcba") == true: ' + (palindrome?('abcba') == true).to_s)
puts('palindrome?("z") == true: ' + (palindrome?('z') == true).to_s)