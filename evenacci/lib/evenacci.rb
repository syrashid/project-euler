# frozen_string_literal: true

def evenacci(first = 1, second = 1)
  if second > 4_000_000
    0
  elsif second.even?
    second + evenacci(second, first + second)
  else
    evenacci(second, first + second)
  end
end
