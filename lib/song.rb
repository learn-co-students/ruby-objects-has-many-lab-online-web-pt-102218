class Song
  
  attr_accessor :artist, :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all.uniq
  end
  
  def self.artist
    self.artist = self
  end
  
  def artist_name
    artist.name if artist
  end
  
  def save
    @@all << self
  end

end