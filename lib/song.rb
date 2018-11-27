class Song 
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name 
    @@all << self 
  end
  
  @@all = []
  
  def self.songs 
   @@songs 
  end
  
  def artist_name 
    self.artist.name
  end
  
  def self.all
    @@all
  end
  
end