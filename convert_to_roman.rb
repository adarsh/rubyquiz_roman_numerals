#!/usr/bin/env ruby
require_relative 'lib/roman'

ARGV.each do |input|
  puts Roman.new(input.to_i).to_roman
end
