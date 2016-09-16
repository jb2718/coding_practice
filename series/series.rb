class Series
  attr_reader :digits
  def initialize(digits)
    @digits = digits
  end

  def slice_mask(slice_len)
    (0..slice_len-1).to_a
  end

  def string_to_digits
    digits = self.digits.chars
    digits.map(&:to_i)
  end

  def slices(slice_len)
    raise ArgumentError, 'Slice length must be less than or equal to digit string length' if slice_len > digits.length
    slices = []
    counter = 0
    mask = slice_mask(slice_len)
    loop do
      break unless (counter + mask.last) < digits.length
      slice = []
      mask.each do |idx|
        slice << string_to_digits[idx + counter]
      end
      slices << slice
      counter += 1
    end
    slices
  end
end