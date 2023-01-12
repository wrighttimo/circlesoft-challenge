# frozen_string_literal: true

# Represents an ISBN barcode, provides several functions for
# calculating the check digit and the complete isbn barcode
class ISBN
  def initialize(isbn)
    @isbn = isbn
  end

  def check_digit
    digits = @isbn.to_s.split('').map(&:to_i)

    # Take each digit, multiply them alternatively by 1 and 3 then take the sum
    result = digits.map.with_index do |digit, index|
      index.even? ? digit : digit * 3
    end.sum

    # Take mod 10 of the summed figure and subtract from 10
    result %= 10
    result = 10 - result

    # if the result is 10 use 0 as the final digit of the isbn
    result == 10 ? 0 : result
  end

  def complete_isbn
    "#{@isbn}#{check_digit}".to_i
  end
end
