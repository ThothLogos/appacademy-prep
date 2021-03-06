# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)

  # Compare the incoming values to find the smaller of the two - the greatest
  # common factor cannot be larger than the smaller of the two, so this will be
  # our maximal constraint.
  number1 < number2 ? smallest = number1 : smallest = number2

  # Check every integer between 1 and the maximal constraint
  for i in 1..smallest do
    # If both numbers leave no remainder, we have a common factor
    factor = i if number1 % i == 0 && number2 % i == 0
  end

  return factor
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('greatest_common_factor(3, 9) == 3: ' + (greatest_common_factor(3, 9) == 3).to_s)
puts('greatest_common_factor(16, 24) == 8: ' + (greatest_common_factor(16, 24) == 8).to_s)
puts('greatest_common_factor(3, 5) == 1: ' + (greatest_common_factor(3, 5) == 1).to_s)