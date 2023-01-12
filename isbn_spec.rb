# frozen_string_literal: true

require './isbn'

RSpec.describe ISBN do
  let(:test_isbn) { ISBN.new(978_014_300_723) }
  let(:zero_check_digit_isbn) { ISBN.new(978_214_300_703) }

  describe '#check_digit' do
    it 'is correct for isbn where check digit result is not zero' do
      expect(test_isbn.check_digit).to eq(4)
    end

    it 'is correct for isbn where check digit result is zero' do
      expect(zero_check_digit_isbn.check_digit).to eq(0)
    end
  end

  describe '#complete_isbn' do
    it 'is correct for isbn where check digit result is not zero' do
      expect(test_isbn.complete_isbn).to eq(9_780_143_007_234)
    end

    it 'is correct for isbn where check digit result is zero' do
      expect(zero_check_digit_isbn.complete_isbn).to eq(9_782_143_007_030)
    end
  end
end
