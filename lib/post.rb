class Post
  
  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def author_name(author)
    author.name
    if author.name != Author
      new_author = Author.new(author)
      new_author
    end
  end
  
  
  
end