def numbers_to_english (number)
  ones_to_nine = ['zero','one','two','three','four','five','six','seven','eight','nine']
  teens_array = ['blank','eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']
  tens_array = ['blank','ten','twenty','thirty','fourty','fifty','sixty','seventy','eighty','ninety']

  result = ""

#The start for double digit numbers
  first_words = number / 10
  second_word = number % 10

  if first_words > 0 
    if first_words == 1 && second_word > 0
      result << teens_array[second_word]
      second_word = 0
    else
      result << tens_array[first_words]
    end
  end       ### following this, we could do the same for 100, 1000, 10,000, etc.

  first_words = second_word

  ## For single digit numbers
  if first_words > 0
    result << ones_to_nine[first_words]
  end

  ## for 100
=begin
  first_words = number / 100
  second_word = number % 100
  if first_words > 0
    result << numbers_to_english(writing) << "hundred "
    number = second_word
  end
=end

  result

end

puts numbers_to_english(4)
puts numbers_to_english(14)
puts numbers_to_english(19)
puts numbers_to_english(25)