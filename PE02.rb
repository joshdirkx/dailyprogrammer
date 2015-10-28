# even fibonacci numbers under four million

@fib_seq = [1,2] # first two values
@fib_index = 2   # first calculated value will be '3'

def fibonacci(current_index)
  next_item = @fib_seq[current_index - 2] + @fib_seq[current_index - 1]

  if next_item < 4000000
    @fib_seq.push(next_item)
  else
    return @fib_seq
  end

  fibonacci(@fib_index += 1)
end

def even_sum
  fibonacci(@fib_index)
  sum = 0
  @fib_seq.each { |i| sum += i if i < 4000000 && i.even? }
  return sum
end

even_sum
#answer = 4613732
