print "\nTalk to grandpa!\n\n"

while (true)
    user_input = gets.chomp

    if user_input == "BYE"
        break
    end

    if user_input == user_input.upcase
        # get a random year for grandma to shout back at you!
        max_year = 1950
        min_year = 1930

        # make sure that shouting_year is at least 1930
        shouting_year = 0
        shouting_year = rand(max_year + 1)
        while (shouting_year < min_year)
            shouting_year = rand(max_year + 1)
        end

        print "\n"
        puts "NO, NOT SINCE #{shouting_year}!"
        print "\n"
    else
        print "\n"
        puts "HUH?! SPEAK UP, SONNY!"
        print "\n"
    end
end
