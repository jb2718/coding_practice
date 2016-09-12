class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(slice_len)
    slice_regex = '.' * slice_len
    # slice_arr = 
    @digits.length.times do |cycle|
      p @digits.chars.rotate(cycle)
    end
    # slice_arr = @digits.scan(/(#{slice_regex})/)
    # slice_arr.map { |item| item.map(&:to_i) }
  end
end

series = Series.new('01234')
p series.slices(2)