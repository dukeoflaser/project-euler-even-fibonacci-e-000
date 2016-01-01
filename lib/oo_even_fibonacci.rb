# Implement your object-oriented solution here!

class EvenFibonacci
  def initialize(limit)
    @limit = limit
  end
  
  def fib_sequence
    sequence = [1]
    sequence.each_with_index do |n, i|
      i == 0 ? sum = n : sum = n + sequence[i - 1]
      sequence << sum  if @limit > sum  
    end
  end
  
  def sum
    evens = fib_sequence.find_all { |n| n % 2 == 0 }
    evens.inject { |sum, n| sum + n }
  end
end
