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
    @n = n
  end

  def to_roman
    roman = ROMAN_ARABIC_MAP.map do |roman_numeral, arabic_numeral|
      roman_numeral * roman_letter_multiplier(arabic_numeral)
    end

    roman.join('')
  end

  private

  def roman_letter_multiplier(arabic_numeral)
    n_times = @n / arabic_numeral
    @n -= (n_times * arabic_numeral)
    n_times
  end
end

ARGV.each do |input|
  puts RomanNumerals.new(input.to_i).to_roman
end
