class Post
  
  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
 
  def self.all
    @@all.uniq
  end
   
  def author_name
    author.name if author
  end
  
  
  def save
    @@all << self
  end
  
  
end