
# method to convert a birth date in string format to a Time object
def string_to_time(birthday_string)
    year = birthday_string[-4..-1].to_i
    day = birthday_string.split(",")[0].split(" ")[1].to_i
    month = birthday_string.split(",")[0].split(" ")[0]

    return Time.new(year, month, day)
end

# read in the input file 
# note that IO.read automatically closes the file
read_file = IO.read("input.txt")

birthdays_database = Hash.new

read_file.each_line do |line|
    # parse line
    partitioned_line = line.chomp.partition(",")

    # add to hash
    birthdays_database[partitioned_line[0]] = string_to_time(partitioned_line[2].strip)
end

print "\nOur database contains the following individuals: \n\n"

birthdays_database.each_key do |key|
    puts "#{key}"
end

print "\n"
print "\nPlease choose an individual (case sensative) to display their information. >> "

individual = gets.chomp

if birthdays_database.has_key?(individual)
    # ========================================================================
    # This is a lot of code to figure out if the birthday is this year or next
    # year. With more time, this would also be refactored into its own method
    # ========================================================================

    individuals_birthday = birthdays_database[individual]

    individuals_birthday_month = individuals_birthday.month 
    individuals_birthday_day   = individuals_birthday.day 

    current_time = Time.new
    current_year = current_time.year

    this_years_birthday = Time.new(current_year, individuals_birthday_month, individuals_birthday_day)


    if current_time < this_years_birthday
        actual_birthday = this_years_birthday
    else
        actual_birthday = Time.new(current_year + 1, individuals_birthday_month, individuals_birthday_day)
    end

    formatted_birthday = actual_birthday.strftime("%A %B %d %Y")
    
    # ========================================================================
    # Actual print statement 
    # ========================================================================

    print "\n #{individual}'s next birthday will be on #{formatted_birthday}.\n\n"
else
    print "\nI am sorry, but #{individual} does not exist in our database.\n\n"
end
