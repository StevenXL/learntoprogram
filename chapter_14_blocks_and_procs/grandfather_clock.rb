def grandfather_clock(&block)
    hours_passed = Time.new.hour

    hours_passed = hours_passed - 12 if (hours_passed > 12)

    hours_passed.times { block.call }
end

grandfather_clock do
    puts "DONG!"
end
