def profile (block_description, &block)
    run = true 

    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds" if run
end

profile "99000 Doublings" do
    number = 1
    99000.times do
        number = number + number
    end
end
