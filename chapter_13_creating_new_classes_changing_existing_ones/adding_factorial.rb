# define and add the #factorial(n) method to the Integer class
class Integer
    def factorial
        if self < 0
            puts ""
            puts "Please pass in an integer greater than or equal to 0."
        elsif (self <= 1)
            return 1
        else
            return self * (self -1).factorial
        end
    end
end

puts (-1).factorial
