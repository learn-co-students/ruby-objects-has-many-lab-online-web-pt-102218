class Author
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
  end
  
  def posts
    posts = []
   if self.name == self
      posts << artist
      elsif self.name != self
      return []
    end
  end
  
  def add_post(post)
  posts << post
  post.author = self
end
end