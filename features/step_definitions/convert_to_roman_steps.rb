Given /^the input of "(\d+)"$/ do |input|
  @input = input
end

When /^the program is run$/ do
  @output = `ruby roman_numerals.rb #{@input}`
  raise('Command failed') unless $?.success?
end

Then /^the output should be "(\w+)"$/ do |expected_output|
  @output.chomp.should == expected_output
end
