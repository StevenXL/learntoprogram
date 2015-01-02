# this script figures out how many seconds, from epoch, a given date is

# arguments to time are as follows:
# Time.new(year, month, day, hour, min, sec)

birth_on = Time.new(1986, 10, 04)

puts ""
puts "I was born #{birth_on.to_i} seconds after the Unix Epoch."
puts ""

puts ""
puts "I will be 1 Billion seconds old on #{Time.at(birth_on.to_i + 1_000_000_000)}."
puts ""
