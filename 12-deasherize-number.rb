# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)

  result = ""

  num.to_s.each_char.with_index do |char, index|
    # Place dashes
    if char.to_i % 2 != 0
      result << "-" if result[-1] != "-" 
      result << char
      result << "-"
    elsif char.to_i % 2 == 0
      result << char
    end
  end

  # Convert result to an array of chars for manipulation
  result = result.split("")

  # Remove front and back dashes if they exist
  result.shift if result[0] == "-"
  result.pop if result[-1] == "-"

  # Rejoin as a string and return
  return result.join("")
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('dasherize_number(203) == "20-3": ' + (dasherize_number(203) == '20-3').to_s)
puts('dasherize_number(303) == "3-0-3": ' + (dasherize_number(303) == '3-0-3').to_s)
puts('dasherize_number(333) == "3-3-3": ' + (dasherize_number(333) == '3-3-3').to_s)
puts('dasherize_number(3223) == "3-22-3": ' + (dasherize_number(3223) == '3-22-3').to_s)