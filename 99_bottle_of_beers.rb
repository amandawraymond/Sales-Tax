#print the lyrics to 99 bottles of beers on the wall
class DrinkingSong
  def self.bottles_of_beer 
    lyrics = []
    99.downto(2) do |number|
      lyrics << "#{number} bottles of beer on the wall..."
    end
    lyrics << "1 bottle of beer on the wall..."
    lyrics << "OOOPPPPAAA"
  end
end

DrinkingSong.bottles_of_beer