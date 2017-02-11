require 'minitest/autorun'
require_relative 'binary_gap'
require "minitest/reporters"
Minitest::Reporters.use!

class BinaryGapTest < Minitest::Test
	def test_
		# The function should return 0 if N doesn't contain a binary gap
		# given a positive integer N, returns the length of its longest binary gap.

		# For example, given N = 1041 the function should return 5, 
		# because N has binary representation 10000010001 and so its 
		# longest binary gap is of length 5.

		# N is an integer within the range [1..2,147,483,647]
	end
end