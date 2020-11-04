# frozen_string_literal: true

require 'largest_prime_number'

describe '#largest_prime_number' do
  it 'should return 29 when given 13_195' do
    expect(largest_prime_number(13_195)).to eq(29)
  end

  xit 'should return 6857 when passed 600_851_475_143' do
    expect(largest_prime_number(600_851_475_143)).to eq(6857)
  end

  it 'should return 0 when passed a negative value' do
    expect(largest_prime_number(-10)).to eq(0)
  end

  it 'should raise an error if passed anything besides an integer' do
    expect { largest_prime_number('abc') }.to raise_error(ArgumentError, 'Argument is not an integer')
  end
end
