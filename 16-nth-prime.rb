# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
#
# Difficulty: medium.

# You may use our `is_prime?` solution. - I'll use mine, thank you!
def is_prime?(number)
  return false if number <= 1

  # Assume that it's a prime
  prime = true

  # Check every possible divisor up to the number's own value
  for i in 2...number do
    # If there's ever 0 remainder, it has another divisor -> not prime
    prime = false if number % i == 0
  end
  return prime
end

def nth_prime(n)

  # Input error check, there is no 0th or -1st prime, etc
  return if n < 1

  # Start from the beginning
  nth = 0
  possible_prime = 1

  # Keep going til we find it!
  until nth == n
    # Starts at 2, keep counting up one at a time
    possible_prime += 1
    # Check each integer as we count up, if we find a prime, iterate nth
    nth += 1 if is_prime?(possible_prime)
  end

  return possible_prime
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('nth_prime(1) == 2: ' + (nth_prime(1) == 2).to_s)
puts('nth_prime(2) == 3: ' + (nth_prime(2) == 3).to_s)
puts('nth_prime(3) == 5: ' + (nth_prime(3) == 5).to_s)
puts('nth_prime(4) == 7: ' + (nth_prime(4) == 7).to_s)
puts('nth_prime(5) == 11: ' + (nth_prime(5) == 11).to_s)