class Artist 
  attr_accessor :name, :songs
  
  @@song_count = 0 
  # iniitially you start with 0.. as you begin to add a song you increment the number 
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def add_song(song)
    @songs << song 
    song.artist = self 
    @@song_count += 1 
    # here you increase the total of songs 
  end 
  
  def add_song_by_name(name)
    add_song Song.new(name)
  
  end  
  
  def self.song_count 
    # have to refernce self to indicate it is a class method 
    @@song_count
    # returning the total number of songs associated to all artists... artist is the class 
  end 
end 
