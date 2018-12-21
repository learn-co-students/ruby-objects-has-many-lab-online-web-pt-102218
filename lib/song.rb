class Song 
  attr_accessor :name, :artist
  
  def self.all
    @@all 
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  @@all = []
  
  def artist_name
    if self.artist
     self.artist.name
    end
  end
end
 
 #self.artist.name if self.artist
 #self.artist && self.artist.name