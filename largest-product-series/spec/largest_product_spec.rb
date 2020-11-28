# frozen_string_literal: true

require 'largest_product'

describe '#largest_product' do
  it 'should return 5832 when passed nothing' do
    expect(largest_product).to eq 5832
  end

   it 'should return 5832 when passed 4' do
    expect(largest_product(4)).to eq 5832
  end

  it 'should return 23514624000 when passed 13' do
    expect(largest_product(13)).to eq 0
  end
end
