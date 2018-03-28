class Fizzbuzz_evaluator

  attr_reader :numbers

  def initialize(array)
    @numbers = array
  end

  def checker
    numbers.map! {|number| whole?(number/3.0)  ? fizzbuzzer?(number)  : buzzer?(number)  }
  end

  private

  def whole?(x)
    (x - x.floor) < 1e-8
  end

  def fizzbuzzer?(number)
    whole?(number/5.0) ? 'Fizzbuzz' : 'Fizz'
  end

  def buzzer?(number)
    whole?(number/5.0) ? 'Buzz' : number
  end

end

