require 'pry'
require 'prime'

def find_prime(input)
  count, number = 0, 2
  while count < input
    count += 1 if Prime.prime?(number)
    number += 1 unless count == input
  end

  return number, count
end

find_prime(10001)
