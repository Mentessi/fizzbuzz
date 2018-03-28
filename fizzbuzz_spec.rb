require_relative 'Fizzbuzz_evaluator'

RSpec.describe do

  it "returns the numbers if not a fizz or a buzz" do
    evaluate = Fizzbuzz_evaluator.new([1,11,13])
    expect(evaluate.checker).to eq([1,11,13])
  end

  it 'returns fizz when number is a multiple of 3' do
    evaluate = Fizzbuzz_evaluator.new([3,1,6,9,11])
    expect(evaluate.checker).to eq(['Fizz',1,'Fizz','Fizz',11])
  end

  it 'returns buzz when number is multiple of 5' do
    evaluate = Fizzbuzz_evaluator.new([5,11,10,13])
    expect(evaluate.checker).to eq(['Buzz',11,'Buzz',13])
  end

  it 'returns fizzbuzz when number is multiple of 3 and 5' do
    evaluate = Fizzbuzz_evaluator.new([15,30,11,13])
    expect(evaluate.checker).to eq(['Fizzbuzz','Fizzbuzz',11,13])
  end

end
