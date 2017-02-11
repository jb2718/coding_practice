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
    factors = [1, number]
    (2..Math.sqrt(number)).each do |factor|
      if number % factor == 0
        factors <<  factor << (number/factor)
      end
    end
    factors.uniq.sort
  end

  def self.sum_divisors(factors)
    factors.sort
    factors.pop
    factors.reduce(:+)
  end
end