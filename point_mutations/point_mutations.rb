require 'pry'
class DNA
  attr_accessor :first_seq, :second_seq
  def initialize(sequence)
    @first_seq = sequence
  end

  def hamming_distance(sequence)
    @second_seq = sequence
    calculate_diff
  end

  def calculate_diff
    first_seq_copy = first_seq
    second_seq_copy = second_seq
    if first_seq.length > second_seq.length
      first_seq_copy = first_seq.slice(0..second_seq.length-1)
    elsif second_seq.length > first_seq.length
      second_seq_copy = second_seq.slice(0..first_seq.length-1)
    end

    count = 0
    first_seq_copy.chars.each.with_index do |letter, idx|
      count += 1 if letter != second_seq_copy[idx]
    end
    count
  end
end

strand = 'GGACGGATTCTGACCTGGACTAATTTTGGGG'
distance = 'AGGACGGATTCTGACCTGGACTAATTTTGGGG'
p DNA.new(strand).hamming_distance(distance)