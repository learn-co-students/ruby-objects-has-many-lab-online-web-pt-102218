class Song
  
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.artist
    self.artist = self
  end
  
  def self.artist_name(name)
    if self.name == @artist
      self.name
      elsif self.name != @artist
      return "nil"
    end
  end
  
  def save
    @@all << self
  end
  
  def artist_name
   if @artist.name == @artist.name
     @artist.name
   else @artist.name == nil
     nil
   end
  end
end