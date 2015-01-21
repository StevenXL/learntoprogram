def old_roman(to_convert)
  puts ""

  if (to_convert / 1_000 >= 1)
    thousands = "M"
    number_of_thousands = to_convert / 1_000
    print "#{thousands}" * number_of_thousands

    # reduce to_convert
    to_convert -= 1_000 * number_of_thousands
  end

  if (to_convert / 500 >= 1)
    five_hundred = "D"
    number_of_five_hundred = to_convert / 500
    print "#{five_hundred}" * number_of_five_hundred

    # reduce to_convert
    to_convert -= 500 * number_of_five_hundred
  end

  if (to_convert / 100 >= 1)
    one_hundred = "C"
    number_of_one_hundred = to_convert / 100
    print "#{one_hundred}" * number_of_one_hundred

    # reduce to_convert
    to_convert -= 100 * number_of_thousands
  end

  if (to_convert / 50 >= 1)
    fifty = "L"
    number_of_fifty = to_convert / 50
    print "#{fifty}" * number_of_fifty

    # reduce to_convert
    to_convert -= 50 * number_of_fifty
  end

  if (to_convert / 10 >= 1)
    ten = "X"
    number_of_ten = to_convert / 10
    print "#{ten}" * number_of_ten

    # reduce to_convert
    to_convert -= 10 * number_of_ten
  end

  if (to_convert / 5 >= 1)
    five = "V"
    number_of_five = to_convert / 5
    print "#{five}" * number_of_five

    # reduce to_convert
    to_convert -= 5 * number_of_five
  end

  if (to_convert / 1 > 1)
    one = "I"
    number_of_one = to_convert
    print "#{one}" * number_of_one
  end

  print "\n\n"
end
