# frozen_string_literal: true

def largest_prime_number(int, aggregate = [])
  # The prime factors of 13195 are 5, 7, 13 and 29.
  # TODO: What is the largest prime factor of the number 600851475143?
  raise ArgumentError, 'Argument is not an integer' unless int.is_a? Integer
  return 0 if int < 1

  for i in 2..int
    if int%i == 0
      if int == i
        aggregate << i
      else
        largest_prime_number(int/i, aggregate)
        break
      end
    end
  end
  return aggregate.first
end
