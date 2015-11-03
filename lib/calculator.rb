class Calculator

  def calculator_add first, second
    "The addition of #{first} and #{second} is #{first+second}"
  end

  def calculator_sub first, second
    "The substraction of #{first} and #{second} is #{first-second}"
  end


  def calculator_mul first, second
    "The multiply of #{first} and #{second} is #{first*second}"
  end


  def calculator_div first, second
    "The division of #{first} and #{second} is #{first/second}"
  end

  def calculate first,second,operation
    if operation == 'addition'
     first + second #"The addition of #{first} and #{second} is #{first+second}"
    elsif operation == 'substraction' 
      first - second 
    elsif operation == 'multiply'
      first * second 
    elsif operation == 'division'
      first / second 
    end

  end

  def storage result
    IO.write(file.txt,result)
  end

end