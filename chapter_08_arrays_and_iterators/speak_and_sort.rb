# create an empty array to hold the words

words = Array.new

puts "Please enter as many words (one word per line) as you'd like."
puts "To exit, just press ENTER"
puts ""

while (true)
    # get user input
    user_input = gets.chomp

    if user_input == ""
        break
    else
        words << user_input
    end
end

puts ""

if words.length == 0
    puts "You didn't enter any words!"
else
    puts "Thanks. Here are your sorted words:"
    puts ""
    puts words.sort
end

puts ""
