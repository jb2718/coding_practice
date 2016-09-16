class Trinary
  def initialize(input)
    @trinary_digits = if /([a-z])/.match(input.downcase).nil?
      input.chars.map(&:to_i)
    else
      #3's represent invalid input
      input.chars.map{3}
    end
  end

  def to_decimal
    return 0 unless @trinary_digits.select{ |num| num > 2 }.empty?
    decimal_digit = 0
    @trinary_digits.reverse.each_with_index do |num, idx|
      decimal_digit += num * (3 ** idx)
    end
    decimal_digit
  end
end