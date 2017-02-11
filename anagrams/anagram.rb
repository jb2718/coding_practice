require 'pry'
class Anagram
  attr_reader :input
  def initialize(input)
    @input = input
  end

  def match(list)
    anagrams = list.select do |item|
      letterize(input) == letterize(item)
    end
    anagrams.reject do |item|
      item.downcase == input.downcase
    end
  end

  def letterize(word)
    word.downcase.chars.sort
  end
end