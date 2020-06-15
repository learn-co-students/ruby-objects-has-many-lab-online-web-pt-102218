require 'pry'

class Post 
  attr_accessor :author, :title
  
  @@all= []
  
  def initialize(title)
    @title = title
    @@all << self 
  end 
  
  def author_name 
    return if @author.nil?
    # return below if author is not nil 
    @author.name 
    # knows the name of its author 
  end 
  
  def self.all 
   @@all
  end 
end 

# binding.pry 