def factorial_digit_sum(input)
  input.downto(1).inject(:*).to_s.split('').map! { |i| i.to_i }.inject(:+)
end

factorial_digit_sum(100)
