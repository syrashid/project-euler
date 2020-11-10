# frozen_string_literal: true

def smallest_multiple
  # 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
  # TODO: What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

  seed = 2520 # seed is based off above description
  seed += 2520 until (1..20).to_a.all? { |i| (seed % i).zero? }
  seed
end
