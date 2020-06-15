class Post 
  
  attr_accessor :author, :title
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  @@all = []
  
  def self.all 
    @@all 
  end
  
  def author_name 
    author.name if author
  end
  
end