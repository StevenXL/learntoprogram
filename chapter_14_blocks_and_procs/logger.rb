def log(description, &program)
    puts "Starting the call to #{description.capitalize}"
    print "\n"

    code_returned = program.call

    if code_returned
        puts "#{description.capitalize} returned \"#{code_returned}\""
    else
        puts "#{description.capitalize} did not return a value"
    end
    print "\n"

    puts "Ended the call to #{description}"
    print "\n"
end

log("outer loop") do
    log("inner loop") do
        "hello"
    end
end
