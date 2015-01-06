def english_word
end

  word_hash = { 0=>"zero", 1=>"One", 2=>"Two", 3=>"Three",
 4=>"Four", 5=>"Five",6=>"six", 7=>"seven", 8=>"Eight",
9=>"Nine",10=>"Ten",11=>"Eleven",12=>"Twelve",
13=>"Thirteen",14=>"Fourteen",15=>"Fifteen",
16=>"Sixteen",17=>"Seventeen",18=>"Eighteen",
19=>"Nineteen", 20 =>"Twenty",30=>"Thirty",
40=>"Fourty",50 =>"Fifty",60=>"Sixty",70 =>"Seventy",
80=>"Eighty",90 =>"Ninty"}

puts word_hash[0]


## Logically, if i < 9 then that would be the first word spelled out, however if i is > 10, meaning it has double digits, the method has to seee if its < 20.
## if i has double digits, meaning i > 20 then the spelled out word would contain a word from the begining of the hash and a second word which would have spelled an
## integer < 10