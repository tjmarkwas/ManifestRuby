class FizzBuzz
  def self.evaluate(n)
    return "FizzBuzz" if n%15==0
    return "Buzz" if n%5==0
    return "Fizz" if n%3==0
    return n
  end
end