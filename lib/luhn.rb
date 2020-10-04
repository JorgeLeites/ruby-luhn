# frozen_string_literal: true

# Implements the Luhn algorithm mod n to generate checksums
class Luhn
  class << self
    # Calculates the checksum of the given number
    #
    # @param number [String] the number to calculate the checksum
    # @param base [Integer] the base used to calculate the checksum
    # @param uppercase [Boolean] if `true` the result will be in upper case
    # @return [String] the checksum of the given number
    # @raise [ArgumentError] if the number is not valid in the chosen base
    def generate(number, base: 10, uppercase: false)
      total = 0

      characters = number.split('')
      characters.reverse.each_with_index do |character, index|
        value = parse(character, base)

        # Duplicates only digits on an even position
        value *= 2 if index.even?

        # Sums digits of number
        # e.g: if the digit was Z => Z * 2 = 1Y
        # and we sum 1 + Y = 1 + 34 = 35
        total += value / base # Sums first digit
        total += value % base # Sums second digit
      end

      # Return the value we'd have to sum to the total to have a number divisible by 36
      result = (-total % base).to_s(base)
      uppercase ? result.upcase : result
    end

    # Checks if the last digit of the number is the checksum of the rest
    #
    # @param number [String] the number to be checked
    # @param base [Integer] the base used to calculate the checksum
    # @return [Boolean] the validity of the checksum
    # @raise [ArgumentError] if the number is not valid in the chosen base
    def validate(number, base: 10)
      number[-1].downcase == generate(number[0...-1], base: base)
    end

    private

    def parse(digit, base)
      number = digit.to_i(base)

      if number.zero? && digit != '0'
        raise ArgumentError, "The number is not a valid base #{base} number"
      end

      number
    end
  end
end
