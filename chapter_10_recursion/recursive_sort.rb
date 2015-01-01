def sort(unsorted_words)
    # this method calls recursive sort, passing it in an array which will be
    # populated by our recursive sort method
    
    original_words = unsorted_words.clone

    return recursive_sort(original_words, [])
end

def recursive_sort(unsorted, sorted)
    # if unsorted is empty, then we've sorted all the words
    # and we can simply return the sorted list
    return sorted if unsorted.length == 0

    # otherwise: 
    # default first word is the first element of the unsorted array
    first_word = unsorted[0]

    # search for an actual first word
    unsorted.each do |current_word|
        (first_word = current_word) if (current_word < first_word)
    end

    # move actual first word to sorted array from unsorted array
    sorted << first_word
    unsorted.delete_at(unsorted.find_index(first_word))

    # recurse!
    recursive_sort(unsorted, sorted)
end


words = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

puts ""
puts sort(words)

puts ""
puts "=" * 15
puts ""
puts "Now, let's try with a few words included multiple times!"
puts ""

words << "January"
words << "June"
words << "December"

puts sort(words)
puts ""

puts "Let's see if Ruby's sort method returns the same"

puts ""
puts sort(words) == words.sort
puts ""
