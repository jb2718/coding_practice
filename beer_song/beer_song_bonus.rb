class BeerSong
  def initialize
    @all_verses = generate_verses(99)
  end
  
  def verse(num_bottles)
    @all_verses[num_bottles]
  end
  
  def verses(first, last)
    @all_verses.select{|k,_| first.downto(last).include?(k) }
                .values.join("\n")
  end
  
  def lyrics
    @all_verses.values.join("\n")
  end
  
  def generate_verses(num_bottles)
    verses = Hash.new("")
    99.downto(3).each do |num_bottles|
        phrase = "#{num_bottles} bottles of beer on the wall, #{num_bottles} bottles of beer.\n" +
                 "Take one down and pass it around, #{(num_bottles - 1)} bottles of beer on the wall.\n"
        verses[num_bottles] = phrase
    end
    verses[2] = "2 bottles of beer on the wall, 2 bottles of beer.\n" +
                 "Take one down and pass it around, 1 bottle of beer on the wall.\n"
    verses[1] = "1 bottle of beer on the wall, 1 bottle of beer.\n" +
                 "Take it down and pass it around, no more bottles of beer on the wall.\n"
    verses[0] = "No more bottles of beer on the wall, no more bottles of beer.\n" +
                 "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
  verses
  end
end