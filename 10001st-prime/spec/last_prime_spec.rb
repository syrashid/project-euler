# frozen_string_literal: true

require 'last_prime'

describe '#last_prime' do
  it 'should return 11 when passed 5' do
    expect(last_prime(5)).to eq(11)
  end

  it 'should return 13 when passed 6' do
    expect(last_prime(6)).to eq(13)
  end

  it 'should return 104_743 when passed 10_001' do
    expect(last_prime(10_001)).to eq(104_743)
  end

  it 'should return 104_743 when passed nothing' do
    expect(last_prime).to eq(104_743)
  end
end
