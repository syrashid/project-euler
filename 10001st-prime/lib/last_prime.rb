# frozen_string_literal: true

def last_prime(index = 10_001)
  # SET UP PRIME NUMBER SIEVE

  # Set an upper limit on how many numbers to sieve
  upper_lim = 150_000
  # Generate list of booleans up to upper limit
  prime_bools = Array.new(upper_lim, true)
  # Create range of numbers we'll use to iterate over booleans
  test_vals = (2..Math.sqrt(upper_lim).floor).to_a
  # Iterate over test_vals and set prime_indexes to false based off test_vals
  test_vals.each do |val|
    if prime_bools[val]
      multipliers = (2..upper_lim/2).to_a
      multipliers.each do |multiplier|
        prime_bools[val*multiplier] = false
      end
    end
  end

  puts prime_bools.select { |bool| bool }.count
end


last_prime
