def english_number(number)
    if number < 0            # no negative numbers
        return "Please enter a number that isn't negative"
    end

    if number == 0
        return "zero"
    end

    num_string = ""         # this is the string we will be returning
    
    ones_place = [ "one" , "two" , "three",
                   "four", "five", "six",
                   "seven", "eight", "nine" ]

    tens_place = [ "ten", "twenty", "thirty",
                   "fourty", "fifty", "sixty",
                   "seventy", "eighty", "ninety" ]

    teenagers = [ "eleven", "twelve", "thirteen",
                  "fourteen", "fifteen", "sixteen",
                  "seventeen", "eighteen", "nineteen" ]
    
    # left is how much of the number we still have to write out
    # "write" is the part we are writing out right now

    left = number
    write = left / 1_000_000           # how many millions are left?
    left = left - write * 1_000_000    # subtrac off those millions 

    if write > 0
        # here is the recursion
        millions = english_number(write)

        # added a dash so that the display is better
        num_string = num_string + millions + "-million"
    end 

    if left > 0 
        # if string is empty, do not add unnecessary spaces
        if num_string.length > 0
            num_string = num_string + " "
        end
    end

    write = left / 1000           # how many thousands are left?
    left = left - write * 1000    # subtrac off those thousands

    if write > 0
        # here is the recursion
        thousands = english_number(write)

        # added a dash so that the display is better
        num_string = num_string + thousands + "-thousand"
    end 

    if left > 0 
        # if string is empty, do not add unnecessary spaces
        if num_string.length > 0
            num_string = num_string + " "
        end
    end

    write = left / 100            # how many hundreds left?
    left = left - write * 100     # subtract off those hundreds

    if write > 0
        # here is the recursion
        hundreds = english_number(write)

        # added a dash so that the display is better
        num_string = num_string + hundreds + "-hundred"
    end 

    if left > 0 
        # if string is empty, do not add unnecessary spaces
        if num_string.length > 0
            num_string = num_string + " "
        end
    end

    write = left / 10
    left = left - write * 10

    if write > 0
        if ((write == 1) and (left > 0))
            num_string = num_string + teenagers[left - 1]

            left = 0
        else
            num_string = num_string + tens_place[write - 1]
        end
    end

    if left > 0
        # if string is empty, do not add unnecessary spaces
        if num_string.length > 0
            num_string = num_string + "-"
        end
    end

    write = left

    left = 0

    if write > 0
        num_string = num_string + ones_place[write - 1]
    end

    return num_string
end
