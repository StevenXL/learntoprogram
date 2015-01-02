# create a new die class based on the code in the book
class Die

    def initialize
        roll
    end

    def roll
        @number_showing = 1 + rand(6)
    end

    def showing
        @number_showing
    end

    def cheat(integer)
        if (integer > 6 or integer < 1)
            puts "Please cheat using integers 1 through 6, inclusive"
            puts "Current state of die: showing #{@number_showing}"
        else
            @number_showing = integer
        end
    end

    # we are trying to make a new method in which we can set the instance
    # variable @number_showing.
    # attr_writer :number_showing
    # the only problem is that this would make it possible to set the variable
    # to anything. As a result, we have to use a method instead
end

die = Die.new

puts ""
puts "Die after initialization: "
puts die.showing
puts ""

die.cheat(3)
puts "Die after setting it to 3 with our cheat method: "
puts die.showing
puts ""

puts "Die after trying to cheat to 19: "
die.cheat(19)
