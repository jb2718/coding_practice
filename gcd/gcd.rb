def gcd(a,b)
  range_max = [a,b].min
  common_divisors = []
  (1..range_max).each do |divisor|
    common_divisors << divisor if (a % divisor == 0) && (b % divisor == 0)
  end
  common_divisors.max
end

p gcd(9,15) # => 3
p gcd(100,11) # => 1
p gcd(14,28) # => 14