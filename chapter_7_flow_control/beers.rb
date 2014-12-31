beers = 99


while (beers > 0)
    song = "\t#{beers} bottles of beer on the wall,
    \t#{beers} bottles of beer!
    \tYou take one down, pass it around,
    \t#{beers - 1} bottles of beer on the wall!\n"

    print song
    beers = beers - 1
end
