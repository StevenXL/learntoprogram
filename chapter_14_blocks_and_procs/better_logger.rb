$levels_into_log = -1 

def log(description, &program)
    $levels_into_log += 1
    $levels_into_log.times { print "\t" }
    puts "Starting the call to #{description.capitalize}"
    print "\n"

    code_returned = program.call

    if code_returned
        $levels_into_log.times { print "\t" }
        puts "#{description.capitalize} returned \"#{code_returned}\""
    else
        $levels_into_log.times { print "\t" }
        puts "#{description.capitalize} did not return a value"
    end
    print "\n"

    $levels_into_log -= 1
end

log("outer loop") do
    log("inner loop") do
        log("inner inner loop") do
            "hello again"
        end
        "hello"
    end
    "goodbye"
end
