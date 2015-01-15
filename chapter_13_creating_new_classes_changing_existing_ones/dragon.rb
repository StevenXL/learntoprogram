class Dragon
    def initialize(name)
        @name = name
        @asleep = false
        @stuff_in_belly = 10
        @stuff_in_intestines = 0

        puts "#{@name} is born...."
    end

    def feed
        puts "You feed #{@name}"
        @stuff_in_belly = 10
        passage_of_time
    end

    def walk
        puts "You walk #{@name}"
        @stuff_in_intenstines = 0
        passage_of_time
    end

    def put_to_bed
        puts "You put #{@name} to bed."
        @asleep = true

        3.times do
            if @asleep
                passage_of_time
            end

            if @alseep
                puts "#{@name} snores, filling the room withs smoke."
            end
        end

        if @asleep
            @alseep = false
            puts "#{@name} wakes up slowly." 
        end
    end

    def toss
        puts "You toss #{@name} into the air."
        puts "He giggles, which singes your eyebrows."
        passage_of_time
    end

    def rock
        puts "You rock #{@name} gently."
        @alseep = true
        puts "But he briefly doeses off."
        passage_of_time

        if @asleep
            @asleep = false
            puts "...but wakes up when you stop."
        end
    end

    private
    def hungry?
        @stuff_in_belly <= 2
    end

    def poopy?
        @stuff_in_intestines >= 8
    end

    def passage_of_time
        if @stuff_in_belly > 0
            @stuff_in_belly -= 1
            @stuff_in_intestines += 1
        else
            if @asleep
                @asleep = false
                puts "He wakes up suddenly!"
            end
            
            puts "#{@name} is starving. In desperation, he eats you."
            exit
        end

        if @stuff_in_intestines >= 10
            @stuff_in_intestines = 0
            puts "Whoops! #{@name} had an accident...."
        end

        if hungry?
            if @alseep
                @asleep = false
                puts "He wakes up suddenly!"
            end
            puts "#{@name}'s stomach grumbles..."
        end

        if poopy?
            if @asleep
                @asleep = false
                puts "He wakes up suddenly!"
            end

            puts "#{@name} does the potty dance."
        end
    end
end

print "\nPlease enter a name for your dragon  >> "
dragon_name = gets.chomp.capitalize
puts
pet = Dragon.new(dragon_name)

print "\nYou now have to take care of your new pet. Or you can stop by typing \"STOP\".\n"

loop do
    puts
    puts "You can FEED, WALK, TOSS, PUT_TO_BED, and ROCK"
    puts
    print "What would you like to do with Norbert? >> "
    input = gets.chomp.upcase

    case input
    when "FEED"
        pet.feed
    when "WALK"
        pet.walk
    when "TOSS"
        pet.toss
    when "PUT_TO_BED"
        pet.put_to_bed
    when "ROCK"
        pet.rock
    when "STOP"
        break
    else
        puts "Norbert can't do that. Try again, or input STOP to stop the game"
    end
end
