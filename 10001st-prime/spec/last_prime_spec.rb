# frozen_string_literal: true

require 'last_prime'

describe '#last_prime' do
  it 'should return 11 when passed 5' do
    expect(last_prime(5)).to eq(11)
  end

  it 'should return 13 when passed 6' do
    expect(last_prime(6)).to eq(13)
  end
end
