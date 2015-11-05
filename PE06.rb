def square_of_sum(input)
  (1..input).inject(:+)**2
end

def sum_of_square(input)
  (1..input).to_a.map! { |i| i**2 }.inject(:+)
end

def find_diff(input)
  square_of_sum(input) - sum_of_square(input)
end

find_diff(100)
