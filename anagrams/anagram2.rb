require 'pry'
class Anagram
  attr_reader :input
  def initialize(input)
    @input = input
  end

  def match(words)
    words.select{ |word| anagram?(input, word)}
  end

  def anagram?(word1, word2)
    return false if (word1.downcase == word2.downcase) || (word1.size != word2.size)
    word2_chars = word2.downcase.chars

    word1.downcase.chars.each do |char|
      return false if word2_chars.index(char).nil?
      word2_chars.delete_at(word2_chars.index(char))
    end
    true
  end
end