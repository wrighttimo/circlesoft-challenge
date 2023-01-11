# frozen_string_literal: true

require './isbn'

RSpec.describe ISBN do
  subject { ISBN.new }
  let(:test_isbn) { 978014300723 }

  describe "#check_digit" do
    it "is correct" do
      expect(subject.check_digit(test_isbn)).to eq(4)
    end
  end

  describe "#complete_isbn" do
    it "is correct" do
      result = subject.complete_isbn(test_isbn)

      expect(result).to eq(9780143007234)
    end
  end
end
