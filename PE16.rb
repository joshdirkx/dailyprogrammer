def power_digit_sum(base, exponent)
  (base ** exponent).to_s.split('').map! { |i| i.to_i }.inject(:+)
end

power_digit_sum(2, 1000)
