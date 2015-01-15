# the point of this exercise is to create a method that takes an array and
# returns the items in the array in in a completely random way
# 
# for this program, I am going to be using the rand function, which returns an
# integer greater than or equal to 0 but less than the number passed. 
#
# I'm also going to use the Array#delete_at(index) function, which deletes the
# element at the given index, but also returns it

def shuffle(input)
    randomized = Array.new

    until input.length == 0
        # initialize a random integer within the array's # of elements
        randomized_index = rand(input.length)

        # push the element at that integer to our output array and delete that
        # element from our input array
        randomized << input.delete_at(randomized_index)
    end

    return randomized
end
