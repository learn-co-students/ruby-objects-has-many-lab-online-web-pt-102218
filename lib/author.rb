class Author
  attr_accessor :name, :posts
  
  @@post_count = 0
  # class method 
  
  def initialize(name)
    @name = name 
    @posts = []
  end 
  
  def add_post(post)
    @posts << post 
    # has many posts.. so you need to create an array to hold all that is passed through
    post.author = self 
    # assoiatees post with author
    # ** you built a post argurment... Post constant has to be identified/created in other file 
    @@post_count +=1  
  end 
  
  def add_post_by_title(title)
    add_post Post.new(title) 
    # when it is a new post you always have to take in an arg. such as the initialize
  end 
  
  def self.post_count
    @@post_count
  end 
  
end 


