class Octal
  def initialize(input)
    @octal_digits = if /([a-z])/.match(input.downcase).nil?
      input.chars.map(&:to_i)
    else
      #8's represent invalid input
      input.chars.map{8}
    end
  end

  def to_decimal
    return 0 unless @octal_digits.select{ |num| num > 7 }.empty?
    decimal_digit = 0
    @octal_digits.reverse.each_with_index do |num, idx|
      decimal_digit += num * (8 ** idx)
    end
    decimal_digit
  end
end