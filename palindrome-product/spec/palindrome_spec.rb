# frozen_string_literal: true

require 'palindrome'

describe '#three_palindrome' do
  it 'should return 906609' do
    expect(three_palindrome[:answer]).to eq(906609)
    expect(three_palindrome[:values]).to include(913, 993)
  end
end

describe '#two_palindrome' do
  it 'should return 9009' do
    expect(two_palindrome[:answer]).to eq(9009)
    expect(two_palindrome[:values]).to include(91, 99)
  end
end
