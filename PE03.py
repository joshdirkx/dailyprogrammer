def check_prime(num):
    if num != 0 and num > 2:
        for i in range(2, num):
            return False if num % i == 0 else next

    return True


def largest_prime_factor(input):
    factor, count = 0, 2

    while not count > input:
        if input % count == 0 and check_prime(count):
            factor = count
            input = input / factor
        count += 1

    return factor

print(largest_prime_factor(600851475143)) # 6857
