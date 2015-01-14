# This is a copy of the code in the book, with the modification that, if anyone
# falls off the edge of the map, they return 0

M = "land"
o = "water"

world = [[o,o,o,o,o,o,o,o,o,o,o],
         [o,o,o,o,M,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,M,M,o],
         [o,o,o,M,o,o,o,o,o,M,o],
         [o,o,o,M,o,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [o,o,o,M,M,M,M,M,M,o,o],
         [o,o,o,M,M,o,M,M,M,M,M],
         [o,o,o,o,o,o,M,M,o,o,o],
         [o,M,o,o,o,M,o,M,o,o,o],
         [o,o,o,o,o,o,o,M,o,o,o]]

def continent_size(world, x, y)
    # make sure we don't fall off a cliff!
    if (y >= world.length) || (x >= world[0].length)
        return 0
    end

    if world[y][x] != "land"
        # either it's water or we alreday counted it, but either way, we don't
        # want to count it now. 

        return 0
    end

    # first we count this tile...
    size = 1
    world[y][x] = "counted land"

    # ... then we count all of the neighboring eight tiles (and, of course,
    # their neighbors by way of the recurstion)
    size = size + continent_size(world, x - 1, y - 1)
    size = size + continent_size(world, x    , y - 1)
    size = size + continent_size(world, x + 1, y - 1)
    size = size + continent_size(world, x - 1, y    )
    size = size + continent_size(world, x + 1, y    )
    size = size + continent_size(world, x - 1, y + 1)
    size = size + continent_size(world, x    , y + 1)
    size = size + continent_size(world, x + 1, y + 1)

    size
end

puts continent_size(world, 5, 5)
