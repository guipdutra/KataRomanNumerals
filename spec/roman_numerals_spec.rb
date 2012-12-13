require "spec_helper"

describe "Roman Numerals" do
  it "should convert roman number to literal number given a basic roman number" do
    roman_number = RomanNumeral.new("X")
    roman_number.to_literal.should eql 1
  end
  it "should convert roman number to literal number given a complex roman number" do  
    roman_number = RomanNumeral.new("MCMXCIX")
    roman_number.to_literal.should eql 1999
  end
  it "should convert roman number to literal number given a number with 3 digits roman number" do  
    roman_number = RomanNumeral.new("CLXVII")
    roman_number.to_literal.should eql 167
  end
end