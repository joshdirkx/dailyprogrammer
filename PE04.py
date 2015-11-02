def check_palindrome(num):
    if str(num) == str(num)[::-1]:
        return True
    return False

def find_palindrome():
    palindromes = []
    [palindromes.append((x * y)) for x in range(100, 1000) for y in range(100, 1000) if check_palindrome(x * y)]
    return sorted(palindromes)[-1]

print(find_palindrome())
