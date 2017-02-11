class PerfectNumber

  def self.classify(number)
    raise "This number is not a natural number" unless is_natural?(number)

    sum = sum_divisors(factorize(number))

    if sum == number
      "perfect"
    elsif sum > number
      "abundant"
    else
      "deficient"
    end
  end

  def self.is_natural?(number)
    return true if number > 0 && number.class == Fixnum
    false
  end

  def self.factorize(number)
    (1...number).select do |num|
      number % num == 0
    end
  end

  def self.sum_divisors(factors)
    factors.reduce(:+)
  end
end