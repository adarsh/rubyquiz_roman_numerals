#!/usr/bin/env ruby

class RomanNumerals
  MAX_ROMAN = 3999

  def initialize(value)
    if value <= 0 or value > MAX_ROMAN
      fail "Roman values mus be > 0 and <= #{MAX_ROMAN}"
    end
    @value = value
  end

  ROMAN_ARABIC_MAP = {
    'M'  => 1000, 'CM' => 900, 'D'  => 500, 'CD' => 400,
    'C'  =>  100, 'XC' =>  90, 'L'  =>  50, 'XL' =>  40,
    'X'  =>   10, 'IX' =>   9, 'V'  =>   5, 'IV' =>   4,
    'I'  =>    1 }

  def to_roman
    value = @value
    roman = ROMAN_ARABIC_MAP.collect do |code, factor|
      count, value = value.divmod(factor)
      code * count
    end

    roman.join('')
  end
end

ARGV.each do |input|
  puts RomanNumerals.new(input.to_i).to_roman
end
