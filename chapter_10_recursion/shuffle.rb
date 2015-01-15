# the point of this exercise is to create a method that takes an array and
# returns the items in the array in in a completely random way
# 
# for this program, I am going to be using the rand function, which returns an
# integer greater than or equal to 0 but less than the number passed. 
#
# I'm also going to use the Array#delete_at(index) function, which deletes the
# element at the given index, but also returns it
#
# In this method, we are extending the Array class to support our shuffle
# method. Notice the use of the keyword self to refer to the calling object

class Array
    def shuffle
        original_array = Array.new(self)

        randomized = Array.new

        until original_array.length == 0
            # initialize a random integer within the array's # of elements
            randomized_index = rand(original_array.length)

            # push the element at that integer to our output array and delete that
            # element from our input array
            randomized << original_array.delete_at(randomized_index)
        end

        return randomized
    end
end
