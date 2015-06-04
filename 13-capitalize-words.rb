# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
#
# You'll want to use the `split` and `join` methods. Also, the String
# method `upcase`, which converts a string to all upper case will be
# helpful.
#
# Difficulty: medium.

def capitalize_words(string)

  # Split incoming string into an array of words
  words = string.split(" ")

  # Prepare an empty array to construct our result
  result = []

  words.each do |word|
    # Split each word into an array of chars
    word = word.split("")
    # Upcase the first character of each char array
    word[0] = word[0].upcase
    # Rejoin them back into words
    word = word.join("")
    # Place the upcase'd word into a result array
    result << word
  end

  # Rejoin into a sentence and return
  return result.join(" ")
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('capitalize_words("this is a sentence") == "This Is A Sentence": ' +
     (capitalize_words("this is a sentence") == "This Is A Sentence").to_s)
puts('capitalize_words("mike bloomfield") == "Mike Bloomfield": ' +
     (capitalize_words("mike bloomfield") == "Mike Bloomfield").to_s)