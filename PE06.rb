class SumSquareDifference

  class << self

    def find(input)
      square_of_sum(input) - sum_of_square(input)
    end

    private

    def square_of_sum(input)
      (1..input).inject(:+)**2
    end

    def sum_of_square(input)
      (1..input).to_a.map! { |i| i**2 }.inject(:+)
    end

  end

end
