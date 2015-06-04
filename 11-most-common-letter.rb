# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
#
# Difficulty: medium.

def most_common_letter(string)

  commonest = ""
  top_count = 0

  string.each_char do |char|
    count = string.count(char)
    if count > top_count
      top_count = count
      commonest = char
    end
  end

  result = []
  result << commonest
  result << top_count

  return result
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('most_common_letter("abcazva") == ["a", 2]: ' +
     (most_common_letter('abca') == ['a', 2]).to_s)
puts('most_common_letter("abbab") == ["b", 3]: ' +
     (most_common_letter('abbab') == ['b', 3]).to_s)