# =============================================================================
# Orange Tree 
# =============================================================================

class OrangeTree
    def initialize(name=nil)
        @height = 0
        @age = 0
        @name = name
        @oranges = 0
    end

    def height
        one_year_passes
        return @height
    end

    def name
        one_year_passes
        return @name
    end

    def count_the_oranges
        one_year_passes
        return @oranges
    end

    def pick_an_orange
        if @oranges >= 1
            puts "You have picked an orange."
            @oranges -= 1
            puts "The tree now has #{@oranges} fruit left."
        else
            puts "You don't have any oranges to pick."
        end

        one_year_passes
    end

    def continue
        one_year_passes
    end

    private
    def one_year_passes
        @height += 1
        @age += 1

        if @age >= 13
            puts "Your orange tree #{@name} has withered away and died."
            exit
        elsif @age >= 3
            random = 0
            loop do 
                random = rand(@age)
                break if random > 0
            end

            @oranges = random * 2
        end

        print "\nYour tree has grown. It is now #{@height} feet tall.\nIt is has #{@oranges} fruit.\n"
    end
end
