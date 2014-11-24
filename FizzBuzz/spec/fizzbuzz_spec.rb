require "rspec"
require "fizz_buzz"


describe 'fizzbuzz' do
  it 'says FizzBuzz for multiples of 15' do
    expect(FizzBuzz.evaluate(15)).to eq 'FizzBuzz'
    expect(FizzBuzz.evaluate(30)).to eq 'FizzBuzz'
  end
  it 'says Buzz for multiples of 5' do
    expect(FizzBuzz.evaluate(10)).to eq 'Buzz'
    expect(FizzBuzz.evaluate(25)).to eq 'Buzz'
  end
  it 'says Fizz for multiples of 3' do
    expect(FizzBuzz.evaluate(3)).to eq 'Fizz'
    expect(FizzBuzz.evaluate(9)).to eq 'Fizz'
  end
  it 'says n for all other values' do
    expect(FizzBuzz.evaluate(1)).to eq 1
    expect(FizzBuzz.evaluate(4)).to eq 4
  end
end
