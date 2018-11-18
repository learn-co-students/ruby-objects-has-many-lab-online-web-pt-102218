class Song
  
  attr_accessor :artist, :name
  
  def initialize(name)
    @name = name
    @@all = []
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
end