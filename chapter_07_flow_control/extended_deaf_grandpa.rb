print "\nTalk to grandpa!\n\n"

bye_in_a_row = 0

while (true)
    # get user input 
    user_input = gets.chomp

    # if user types "BYE", make sure to update our count   
    # if user doesn't type "BYE", make sure to reset our "BYE" count
    if user_input == "BYE"

        bye_in_a_row += 1

        if bye_in_a_row == 3
            break
        end
    else
        bye_in_a_row = 0
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
