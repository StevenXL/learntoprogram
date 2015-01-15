
# change working directory
Dir.chdir("/home/s/Pictures")

# print current directory
puts
puts "The working directory is \"#{Dir.pwd}\""
puts

# find all the pictures
pics = Dir["/home/s/tmp/*.jpg"]

puts "Found the following pictures:"
puts
pics.each do |file|
    puts file
    puts "-" * 5
end

print "\nWhat would you like to call this batch? >> "
batch_name = gets.chomp

files_to_move = pics.length

puts "\nDownloading #{files_to_move} files:"
puts

pic_number = 1

pics.each do |file|
    puts
    print "Moving file #{pic_number} of #{files_to_move}....\n" 
    puts

    format = "#{sprintf("%03d", pic_number)}"

    new_name = "#{batch_name}_#{format}.jpg"

    if File.exists?(new_name)
        puts "The filename #{new_name} already exists in #{Dir.pwd}. File will be skipped."
    else
        File.rename(file, new_name)
    end

    pic_number += 1
end


puts "\nDONE!"
