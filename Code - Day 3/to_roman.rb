class Fixnum

  def to_roman
    if self == 0
      ""
    elsif self <= 3
      "I" * self
    elsif self == 4
      "IV"
    elsif self <= 8
      "V" + (self - 5).to_roman
    elsif self == 9
      "IX"
	elsif
      "X" + (self - 10).to_roman  ### After this, there is comething wrong that I cannot find out.###########
    elsif self < 50
      "XL" + (self - 40).to_roman
    elsif self < 90
      "L" + (self - 50).to_roman  
    elsif self < 100
      "XC" + (self - 90).to_roman
    elsif self < 400
      "C" + (self - 100).to_roman
    elsif self < 500
      "CD" + (self - 400).to_roman
    elsif self < 900
      "D" + (self - 500).to_roman
    elsif self < 1000
      "CM" + (self - 900).to_roman  
    else
      "M" + (self - 1000).to_roman
    end
  end
end

def test(actual_value, expectation)
  if actual_value == expectation
    puts "success"
  else
    puts "expected #{expectation} but got #{actual_value}"
  end
end

test 1.to_roman, "I"
test 2.to_roman, "II"
test 4.to_roman, "IV"
test 5.to_roman, "V"
test 6.to_roman, "VI"
test 9.to_roman, "IX"
test 10.to_roman, "X"
test 25.to_roman, "XXV"
test 31.to_roman, "XXXI"
test 42.to_roman, "XLII"
test 78.to_roman, "LXXVIII"
test 1877.to_roman, "MDCCCLXXVII"  
