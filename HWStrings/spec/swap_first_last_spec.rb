require "rspec"
require "swap_first_last"

describe MySwapper do
  it 'swaps the first and last letter of each word in a string' do
    expect(MySwapper.swap_letters('')).to eq ''
    expect(MySwapper.swap_letters('please')).to eq 'eleasp'
    expect(MySwapper.swap_letters('hello world')).to eq 'oellh dorlw'
    expect(MySwapper.swap_letters('this is a house')).to eq 'shit si a eoush'
  end
end