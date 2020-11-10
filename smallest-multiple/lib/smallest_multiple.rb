# frozen_string_literal: true

def smallest_multiple
  # 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
  # TODO: What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
  searching = true
  seed = 2520 # seed is based off above description
  while searching
    # Iterate by 20 starting with seed
    all_divisible = (1..20).to_a.all? do |i|
      # For each number divide by 20 to 1 and check for divisibility
      (seed % i).zero?
    end
    # Set search to false when found
    all_divisible ? searching = false : seed += 20
  end
  seed
end
