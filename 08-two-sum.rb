# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)

  # Iterate through each number in the incoming array
  nums.each do |first|
    
    # If we've hit the end of the array, return - there is nothing left to compare
    return if nums.index(first) == nums.length - 1

    # Nested loop, compare every other value to the prior loop's value
    nums.each do |second|
      
      # Don't let first & second share the same index, skip that case
      next if nums.index(first) == nums.index(second)

      # Check for summing to 0
      if first + second == 0
        result = []
        result << nums.index(first)
        result << nums.index(second)
        # Return the indices of the numbers that sum to 0
        return result
      end

    end
  end
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s)
puts('two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s)