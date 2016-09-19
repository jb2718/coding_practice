class SumOfMultiples
  def initialize(base1, *additional_bases)
    @bases = []
    @bases << base1
    unless additional_bases.nil?
      additional_bases.each { |base| @bases << base }
    end
  end

  def self.to(max, bases=[3,5])
    list_of_mults = []
    bases.each do |base|
      mult = 0
      while (base*mult) < max do
        list_of_mults << base * mult
        mult += 1
      end
    end
    list_of_mults.uniq!.reduce(:+)
  end

  def to(max)
    self.class.to(max, @bases)
  end
end