# get user input
print "Please give me a starting year..> "

start_year = gets.chomp.to_i

print "Please give me an ending year..> "

end_year = gets.chomp.to_i

# create an array of leap years, inclusive

leap_years = Array.new

(start_year..end_year).each do |year|
    if ( (year % 4 == 0) and not (year % 100 == 0) )
        leap_years << year
    elsif ( (year % 4 == 0) and (year % 100 == 0) )
        if (year % 400 == 0)
            leap_years << year
        end
    end
end

# print out leap years one by one
puts ""
puts "Here's a list of all Leap Years between #{start_year} and #{end_year}, inclusive!"
puts ""
puts leap_years
puts "Total number of leap years is #{leap_years.count}"
