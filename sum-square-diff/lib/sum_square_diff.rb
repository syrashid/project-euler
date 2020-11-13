# frozen_string_literal: true

def sum_square_diff(limit = 100)
  # TODO: Find the difference between the sum of the squares of the first
  # one hundred natural numbers and the square of the sum.

  # Brute force method
  sum_squares = (1..limit).to_a.sum { |val| val**2 }
  square_sum = ((1..limit).to_a.sum**2)
  square_sum - sum_squares
end
