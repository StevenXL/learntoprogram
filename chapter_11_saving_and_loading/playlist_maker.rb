# note that shuffle is a symbolic link back to the program written in chapter
# 10
require_relative "shuffle"

print "\nWhat would you like to name this playlist? >> "
playlist_name = gets.chomp

print "\nHow many tracks would you like #{playlist_name} to contain? >> "

number_of_tracks = gets.chomp.to_i

if number_of_tracks < 1
    print "\nThe playlist must have at least one track. Goodebye!\n\n"
    exit
end

# find all songs in library
library = Dir["/home/s/tmp/*mp3"]

if number_of_tracks > library.length
    number_of_tracks = library.length
end

# create a playlist file
playlist = File.open("#{playlist_name}.m3u", "w")

shuffled_library = shuffle(library)

# write playlist
number_of_tracks.times do |integer|
    playlist.write("#{shuffled_library[integer]}\n")
end

# close file
playlist.close
