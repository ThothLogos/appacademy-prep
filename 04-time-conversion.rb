# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
#
# Difficulty: easy.

def time_conversion(minutes)
  
  # Integer division will return whole hours
  hours = minutes / 60
  
  # The remainder will be the minutes
  minutes = minutes % 60
  
  # Fix the formatting in the case of single-digit minutes
  if minutes < 10 then minutes = "0" + minutes.to_s end
  
  return "#{hours.to_s}:#{minutes.to_s}"
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('time_conversion(15) == "0:15": ' + (time_conversion(15) == '0:15').to_s)
puts('time_conversion(150) == "2:30": ' + (time_conversion(150) == '2:30').to_s)
puts('time_conversion(360) == "6:00": ' + (time_conversion(360) == '6:00').to_s)