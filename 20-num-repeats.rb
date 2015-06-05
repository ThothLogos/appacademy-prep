# Write a method that takes in a string and returns the number of
# letters that appear more than once in the string. You may assume
# the string contains only lowercase letters. Count the number of
# letters that repeat, not the number of times they repeat in the
# string.
#
# Difficulty: hard.

def num_repeats(string)

  # Array to track letters that repeat
  repeats = []
  j = 1

  # Outer loop to check each letter
  for i in 0...string.length do
    # Inner loop checks every successive letter from the outer loop
    for k in j...string.length do
      # If the outer loop's letter isn't already counted...
      unless repeats.include?(string[i])
        # Add to the array if a repetition is found
        repeats << string[i] if string[i] == string[k]
      end
    end
    j += 1 # Inner loop index increase
  end

  # Return how many letters we found that repeat
  return repeats.size
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('num_repeats("abdbc") == 1: ' + (num_repeats('abdbc') == 1).to_s)
# one character is repeated
puts('num_repeats("aaa") == 1: ' + (num_repeats('aaa') == 1).to_s)
puts('num_repeats("abab") == 2: ' + (num_repeats('abab') == 2).to_s)
puts('num_repeats("cadac") == 2: ' + (num_repeats('cadac') == 2).to_s)
puts('num_repeats("abcde") == 0: ' + (num_repeats('abcde') == 0).to_s)