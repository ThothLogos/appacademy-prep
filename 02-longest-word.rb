# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

def longest_word(sentence)
  
  # Turn incoming sentence into an array of its constituent words
  words = sentence.split

  longest = ""

  # Iterate through each word in the array
  words.each do |word|
    # Compare to current reigning champion length
    if word.length > longest.length
      longest = word # Update if we found a longer word
    end
  end

  return longest
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('longest_word("short longest") == "longest": ' +
     (longest_word('short longest') == 'longest').to_s)
puts('longest_word("one") == "one": ' +
     (longest_word('one') == 'one').to_s)
puts('longest_word("abc def abcde") == "abcde": ' +
     (longest_word('abc def abcde') == 'abcde').to_s)