# frozen_string_literal: true

require 'multiples'

describe '#multiples' do
  it 'should return 23 when passed 10' do
    expect(multiples(10)).to eq(23)
  end

  it 'should return 233168 when passed nothing or 1000' do
    expect(multiples).to eq(233168)
    expect(multiples(1000)).to eq(233168)
  end

  it 'should return 0 when passed a negative value' do
    expect(multiples(-10)).to eq(0)
  end

  it 'should raise an error if passed anything besides an integer' do
    expect { multiples('abc') }.to raise_error(ArgumentError, 'Argument is not an integer')
  end
end
