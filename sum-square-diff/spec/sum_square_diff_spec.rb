# frozen_string_literal: true

require 'sum_square_diff'

describe '#sum_square_diff' do
  it 'should return 25_164_150 when passed nothing' do
    expect(sum_square_diff).to eq(25_164_150)
  end

  it 'should return 25_164_150 when passed 100' do
    expect(sum_square_diff(100)).to eq(25_164_150)
  end

  it 'should return 2640 when passed 10' do
    expect(sum_square_diff(10)).to eq(2640)
  end
end
