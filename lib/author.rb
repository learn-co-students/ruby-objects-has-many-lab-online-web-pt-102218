class Author
  
  attr_accessor :name, :author
  
  def initialize(name)
    @name = name
  end
  
  def posts
   []
  end
  
  def add_post(post_name)
  posts << post_name
  post.author = author
end
end