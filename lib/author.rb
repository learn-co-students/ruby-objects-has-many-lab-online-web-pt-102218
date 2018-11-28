require 'pry'
class Author 
  
  attr_accessor :name  
  @@all = []
  @@count = 0 
  
  def initialize(name)
    @name = name 
  end 
  
  def posts 
    @@all
  end 
  
  def add_post(post) 
    @@all << post 
    post.author = self 
    @@count += 1
  end 
  
  def add_post_by_title(post)
    new_post = Post.new(post)
    @@all << new_post 
    new_post.author = self
    @@count += 1
    
  end 
  
  def self.post_count 
    @@count
    
  end 


end 
