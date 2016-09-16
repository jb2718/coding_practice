class Sieve
  def initialize(max)
    @range_max = max
    @num_list = generate_all_nums
  end

  def generate_all_nums
    (0..@range_max).to_a
  end

  def remove_multiples(base)
    range = (base + 1...@num_list.length)
    range.each do |num|
      next if @num_list[num] == nil
      @num_list[num] = nil if num % base == 0
    end
  end

  def primes
    @num_list[0] = nil
    @num_list[1] = nil
    counter = 2
    while counter < @num_list.length
      if @num_list[counter] == nil
        counter += 1
        next
      else
        remove_multiples(counter)
      end
      counter += 1
    end
    @num_list.compact
  end
end

