# frozen_string_literal: true

def three_palindrome
  # A palindromic number reads the same both ways.  The largest palindrome made from the product of two 2-digit number is 9009 = 91 x 99.
  # TODO: Find the largist palindrome made from the product of two 3-digit numbers.

  (0..899).each do |i|
    (0..899).each do |j|
      product = (999 - i) * (999 - j)
      return { answer: product, values: [i, j] } if palindromic_number?(product)
    end
  end
end

def two_palindrome
  (0..89).each do |i|
    (0..89).each do |j|
      product = (99 - i) * (99 - j)
      return { answer: product, values: [i, j] } if palindromic_number?(product)
    end
  end
end

def palindromic_number?(product)
  product.to_s == product.to_s.chars.reverse.join
end
