require 'prime'

def smallest_multiple(input)
  prime_in_range = []
  (1..input).each { |i| prime_in_range.push(i) if Prime.prime?(i) }
  prime_in_range.map! { |i| count = 1; count +=1 until ((i**count) > input); i**(count-1) }
  prime_in_range.inject(:*)
end

#smallest_multiple(10)
smallest_multiple(20)
