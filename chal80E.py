from itertools import permutations as find_permutations
import re


def find_anagrams(input):
    permutations = list()

    for word in list(find_permutations(list(input.lower()))):
        permutations.append(''.join(word))

    with open('chal80dictionary.txt') as file:
        dictionary = set([re.sub('\n', '', word) for word in file.readlines()])

    print([word for word in permutations
           if word in dictionary])

find_anagrams('LEPROUS')
find_anagrams('PAGERS')
find_anagrams('AMBLERS')
