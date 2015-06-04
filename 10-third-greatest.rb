# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

def third_greatest(nums)

  # We're going to compare each num to every other one
  nums.each do |num|
    # Track larger number instances, start each comparison fresh
    count = 0
    # Nested comparison
    nums.each do |compare|
      # Add to the count if we find a bigger number
      count += 1 if num < compare
    end
    # If exactly 2 bigger numbers are found, we have the third largest
    return num if count == 2
  end

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('third_greatest([5, 3, 7]) == 3: ' + (third_greatest([5, 3, 7]) == 3).to_s)
puts('third_greatest([5, 3, 7, 4]) == 4: ' + (third_greatest([5, 3, 7, 4]) == 4).to_s)
puts('third_greatest([2, 3, 7, 4]) == 3: ' + (third_greatest([2, 3, 7, 4]) == 3).to_s)