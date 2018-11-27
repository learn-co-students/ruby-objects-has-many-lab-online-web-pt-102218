class Author 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @posts = []
  end
  
  @@counter = []
  
  def posts 
    @posts
  end
  
  def add_post(post)
    post.author = self
    @posts << post
    @@counter << post
  end
  
  def add_post_by_title(title)
    title = Post.new(title)
    title.author = self 
    @posts << title
    @@counter << title
  end
  
  def self.post_count 
    @@counter.count
  end
  
end