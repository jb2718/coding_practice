require 'pry'
class Hex
  def initialize(string)
    @hex_string = string
  end

  def digits
    letter_convert = {'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14, 'f' => 15}
    @hex_string.chars.map do |char|
      if char =~ /[0-9]/
        char.to_i
      else
        letter_convert[char.downcase]
      end
    end
  end

  def to_decimal
    return 0 if @hex_string =~ /[^0-9a-fA-F]/
    sum = 0
    digits.each_with_index do |num, idx|
      sum += num * 16 ** idx
    end
    sum
  end
end

my_hex = Hex.new('DAD')
p my_hex.to_decimal