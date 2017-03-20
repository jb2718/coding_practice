class BeerSong
  def initialize
  end
  
  def bottle_phrase(num_bottles)
    case num_bottles
    when 0
      "no more bottles"
    when 1
      "1 bottle"
    else
      num_bottles.to_s + " bottles"
    end
  end
  
  def verse(num_bottles)
    part1 = "#{bottle_phrase(num_bottles)} of beer on the wall,".capitalize
    part2 = "#{bottle_phrase(num_bottles)} of beer."
    part3 = case num_bottles
            when 0
              "Go to the store and buy some more,"
            when 1
              "Take it down and pass it around,"
            else
              "Take one down and pass it around,"
            end
    part4 = num_bottles == 0 ? "99 bottles of beer on the wall." : "#{bottle_phrase(num_bottles - 1)} of beer on the wall."
    
    part1 + " " + part2 + "\n" + part3 + " " + part4 + "\n"
  end
  
  def verses(first, last)
    final_phrases = []
    first.downto(last).each do |num_bottles|
      final_phrases << verse(num_bottles)
    end
    final_phrases.join("\n")
  end
  
  def lyrics
    verses(99, 0)
  end
end