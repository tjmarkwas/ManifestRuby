class NoVowels
  def self.remove_vowels(string)
    string.gsub(/[aeiouAEIOU]/, '')
  end
end