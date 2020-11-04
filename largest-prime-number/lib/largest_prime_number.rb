# frozen_string_literal: true

def largest_prime_number(int, bubbler = {})
  # The prime factors of 13195 are 5, 7, 13 and 29.
  # TODO: What is the largest prime factor of the number 600851475143?
  raise ArgumentError, 'Argument is not an integer' unless int.is_a? Integer
  return 0 if int < 1

  (2..int).each do |i|
    if (int % i).zero?
      int == i ? bubbler[:top_value] = i : largest_prime_number(int / i, bubbler)
      break
    end
  end
  bubbler[:top_value]
end

# def largest_prime_number(int, bubbler = {})
#   # The prime factors of 13195 are 5, 7, 13 and 29.
#   # TODO: What is the largest prime factor of the number 600851475143?
#   raise ArgumentError, 'Argument is not an integer' unless int.is_a? Integer
#   return 0 if int < 1

#   (2..int).each do |i|
#     if (int % i).zero? && int == i
#       bubbler[:top_value] = i
#     elsif (int % i).zero?
#       largest_prime_number(int / i, bubbler)
#       break
#     end
#   end
#   bubbler[:top_value]
# end
