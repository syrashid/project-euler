# frozen_string_literal: true

def last_prime(index = 10_001)
  prime_bools = generate_prime_bools

  # ASSOCIATE POSITION WITH PRIME NUMBER INDICES
  prime_nums = prime_bools.filter_map.with_index { |bool, i| i if bool }
  prime_nums[index + 1]
end

def generate_prime_bools
  # SET UP PRIME NUMBER SIEVE (OF ERATOSTHENES)
  # https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
  # See algorithm ^

  # Set an upper limit on how many numbers to sieve
  upper_lim = 150_000
  # Generate list of booleans up to upper limit
  prime_bools = Array.new(upper_lim, true)
  # Create range of numbers we'll use to iterate over booleans
  test_vals = (2..Math.sqrt(upper_lim).floor).to_a
  # Iterate over test_vals and set prime_indices to false based off test_val multiples
  test_vals.each do |val|
    next unless prime_bools[val]

    multipliers = (2..upper_lim / 2).to_a
    multipliers.each { |m| prime_bools[val * m] = false }
  end
  prime_bools
end
