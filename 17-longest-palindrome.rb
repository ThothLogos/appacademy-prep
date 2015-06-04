# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
#
#     "abcd".slice(1, 2) == "bc"
#     "abcd".slice(1, 3) == "bcd"
#     "abcd".slice(2, 1) == "c"
#     "abcd".slice(2, 2) == "cd"
#
# Difficulty: hard.

def palindrome?(string)
  i = 0
  while i < string.length
    if string[i] != string[(string.length - 1) - i]
      return false
    end
    i += 1
  end

  return true
end

def longest_palindrome(string)

  # First check if the entire thing is a palindrome, easy win
  return string if palindrome?(string)

  longest = ""
  i = 1

  # Check various sections, favoring front, back, or middle
  string.length.times do
    front_section = string.slice(0, i)
    if palindrome?(front_section)
      longest = front_section if front_section.length > longest.length
    end

    back_section = string.slice(i, string.length - 1)
    if palindrome?(back_section)
      longest = back_section if back_section.length > longest.length
    end

    for k in 0...string.length do
      mid_section = string.slice(k, i)
      if palindrome?(mid_section)
        longest = mid_section if mid_section.length > longest.length
      end
    end

    i += 1
  end

  return longest
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('longest_palindrome("abcbd") == "bcb": ' +
     (longest_palindrome('abcbd') == 'bcb').to_s)
puts('longest_palindrome("abba") == "abba": ' +
     (longest_palindrome('abba') == 'abba').to_s)
puts('longest_palindrome("abcbdeffe") == "effe": ' +
     (longest_palindrome('abcbdeffe') == 'effe').to_s)