from math import ceil


def garland_word(input, garland_count=0):
    garland_count = ceil(len(input)/2)
    while input[:garland_count] != input[-garland_count:]:
        (input, garland_count) = (input, garland_count-1)
        if garland_count == 0:
            break
    print (str(input) + ' -> ' + str(garland_count))


garland_word('programmer')
garland_word('ceramic')
garland_word('onion')
garland_word('alfalfa')
