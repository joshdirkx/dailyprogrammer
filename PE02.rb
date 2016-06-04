class Fibonacci

  attr_accessor :sequence, :index, :sum

  def initialize
    @sequence = [1,2]
    @index = 2
    @sum = 0
  end

  def run
    find_next(@index)
    @sequence.each { |i| @sum += i if i < 4000000 && i.even? }
    return sum
  end

  private

  def find_next(current_index)
    next_item = @sequence[current_index - 2] + @sequence[current_index - 1]

    if next_item < 4000000
      @sequence.push(next_item)
    else
      return @sequence
    end

    find_next(@index += 1)
  end

end
