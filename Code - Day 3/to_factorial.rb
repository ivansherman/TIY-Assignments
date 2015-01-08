### Defining to factorial

class Fixnum

  def to_factorial
  	if self == 0
  		1
  	else
  		self * (self-1).to_factorial
  	end
  end
end  

def test(factorial_answer, expectation)
  if factorial_answer == expectation
    puts "success"
  else
    puts "expected #{expectation} but got #{factorial_answer}"
  end
end

test 4.to_factorial, 24
test 6.to_factorial, 720

## puts "6 factorial is #{6.to_factorial}"