# Implement your procedural solution here!
require 'pry'
require 'pry-nav'

def even_fibonacci_sum(limit)
  sequence = [1]
  sequence.each_with_index do |n, i|
    i == 0 ? sum = n : sum = n + sequence[i - 1]
    sequence << sum  if limit > sum
  end

  evens = sequence.find_all { |n| n % 2 == 0 }
  evens.inject { |sum, n| sum + n }
end


