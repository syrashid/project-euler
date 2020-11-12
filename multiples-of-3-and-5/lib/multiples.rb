# frozen_string_literal: true

def multiples(int = 1000)
  # If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
  # The sum of these multiples is 23.
  # TODO: Find the sum of all the multiples of 3 or 5 below 1000.
  raise ArgumentError, 'Argument is not an integer' unless int.is_a? Integer

  (3...int).inject(0) do |sum, n|
    (n % 3).zero? || (n % 5).zero? ? (sum + n) : sum
  end
end
