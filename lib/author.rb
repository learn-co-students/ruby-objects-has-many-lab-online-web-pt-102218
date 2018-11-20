require "pry"

class Author
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
   @posts
  end
  
  def add_post(title)
    @posts << title
    title.author = self
  end
  
  def self.all
    @@all << self
  end
  
  def add_post_by_title(title)
    creation = Post.new(title)
    creation.save
    add_post(creation)
  end
  
  def self.post_count
    Post.all.length
  end

end