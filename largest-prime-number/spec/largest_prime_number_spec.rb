# frozen_string_literal: true

require 'largest_prime_number'

describe '#largest_prime_number' do
  it 'should return X when given Y' do
    expect(largest_prime_number(13195)).to eq(29)
  end

  xit 'should return X when passed nothing or Y' do
    expect(largest_prime_number(600851475143)).to eq(1)
    expect(largest_prime_number(600851475143)).to eq(233_168)
  end

  it 'should return 0 when passed a negative value' do
    expect(largest_prime_number(-10)).to eq(0)
  end

  it 'should raise an error if passed anything besides an integer' do
    expect { largest_prime_number('abc') }.to raise_error(ArgumentError, 'Argument is not an integer')
  end
end
