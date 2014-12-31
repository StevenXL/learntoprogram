initial_beers = 99

while (initial_beers > 0)
    # seperate song into lines to toggle between bottle and bottles later in
    # the program
    line_1_and_2 = "\t#{initial_beers} bottles of beer on the wall,\n\t#{initial_beers} bottles of beer!\n"
    line_3 = "\tYou take one down, pass it around,\n"
    line_4 = "\t#{initial_beers - 1} bottles of beer on the wall!\n"

    # toggle between bottles and bottle
    line_1_and_2.gsub!("bottles", "bottle") if (initial_beers < 2) 
    line_4.gsub!("bottles", "bottle") if ( (initial_beers - 1) < 2) 

    # corner case if there are 0 bottles in line 4
    if ( (initial_beers - 1) == 0)
        line_4 = "\t........... No more beer!!!\n"
    end

    print line_1_and_2
    print line_3
    print line_4

    print "\n\n"

    initial_beers = initial_beers - 1
end
