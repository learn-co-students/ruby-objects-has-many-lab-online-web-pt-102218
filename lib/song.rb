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
  
  def artist_name
    return if @artist.nil?
    # return unless @artist
    @artist.name 
  end 
end 


# OR 

# def artist_name
#     if artist
#       self.artist.name
#     else
#       nil
#     end
#   end