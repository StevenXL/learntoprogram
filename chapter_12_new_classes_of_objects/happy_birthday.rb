puts ""
print "What year where you born in? > "
year = gets.chomp.to_i


puts ""
print "What month (in integer format) where you born in? > "
month = gets.chomp.to_i

puts ""
print "What day (in integer format) where you born in? > "
day = gets.chomp.to_i

born = Time.new(year, month, day)
seconds_in_a_year = 60 * 60 * 24 * 365
seconds_since_birth = Time.now - born
years_old = (seconds_since_birth / seconds_in_a_year).to_i

puts ""
puts "You are #{years_old} years old!"
puts "That's how many arm punches you get!"
years_old.times { puts "PUNCH!" }
puts ""
