# frozen_string_literal: true

def last_prime(index)
  # TODO: Return true
  n = (index/2.0).ceil - 1
  index.odd? ? (6*n) - 1 : (6*n) + 1
end
