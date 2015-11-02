def find_sum(input):
    return sum([num for num in range(1, input) if num % 3 == 0 or num % 5 == 0])

print(find_sum(1000))
