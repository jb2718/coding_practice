require 'pry'
class Phrase
  def initialize(input_string)
    @orig_string = input_string
  end

  def word_count
    word_hash = {}
    temp_string = String.new(@orig_string)
    loop do
      break unless temp_string.slice(/\w+'?\w+|\d+/)
      word = temp_string.slice!(/\w+'?\w+|\d+/).downcase
      word_hash[word].nil? ? word_hash[word] = 1 : word_hash[word] += 1
    end
    word_hash
  end
end