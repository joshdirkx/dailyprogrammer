def large_sum(file)
  File.read(file).split("\n").map! { |i| i.to_i }.inject(:+).to_s[0..9].to_i
end

large_sum("PE13_input.txt")
