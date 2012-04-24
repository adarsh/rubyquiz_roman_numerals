#!/usr/bin/env ruby

class RomanNumerals
  ROMAN_ARABIC_MAP = {
    'M'  => 1000,
    'CM' => 900,
    'D'  => 500,
    'CD' => 400,
    'C'  => 100,
    'XC' => 90,
    'L'  => 50,
    'XL' => 40,
    'X'  => 10,
    'IX' => 9,
    'V'  => 5,
    'IV' => 4,
    'I'  => 1 }

  def initialize(n)
    @arabic = n
  end

  def to_roman
    roman_output = ""

    ROMAN_ARABIC_MAP.map do |roman_numeral, arabic_numeral|
      division_result_rounded = @arabic / arabic_numeral

      if division_result_rounded > 0
        roman_letters_added = roman_numeral * division_result_rounded
        roman_output << roman_letters_added
        decrement_remaining_arabic_value = division_result_rounded * arabic_numeral
        @arabic -= decrement_remaining_arabic_value
      end
    end

    roman_output
  end
end

ARGV.each do |input|
  puts RomanNumerals.new(input.to_i).to_roman
end
