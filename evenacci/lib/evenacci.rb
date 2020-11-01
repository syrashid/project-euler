# frozen_string_literal: true

def evenacci(first = 1, second = 1)
  # Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

  # 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

  # TODO: By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
  if second > 4_000_000
    0
  elsif second.even?
    second + evenacci(second, first + second)
  else
    evenacci(second, first + second)
  end
end