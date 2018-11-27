class Artist 
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @songs = []
  end
  @@all_songs = []
  
  def songs 
    @songs 
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@all_songs << song
  end
  
  def add_song_by_name(song)
    song = Song.new(song)
    @songs << song 
    song.artist = self
    @@all_songs << song
  end
  
  def self.song_count 
    @@all_songs.count
  end
    
end