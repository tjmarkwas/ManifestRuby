require "rspec"
require 'no_vowels'

describe NoVowels do
  it 'returns empty string when empty string is entered' do
    expect(NoVowels.remove_vowels('')).to eq ''
    expect(NoVowels.remove_vowels('d')).to eq 'd'
    expect(NoVowels.remove_vowels('9jx')).to eq '9jx'
  end
  it 'returns empty string when input is nothing but vowels' do
    expect(NoVowels.remove_vowels('aeiouAEIOU')).to eq ''
  end
end
