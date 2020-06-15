class Author

  attr_accessor :name

  @@writings = []

  def initialize(name)
    self.name = name
  end

  def posts
    Post.all.select {|post| post.author == self}
  end

  def add_post(post)
    post.author = self
    @@writings << post
  end

  def add_post_by_title(post_title)
    new_post = Post.new(post_title)
    new_post.author = self
    @@writings << new_post
  end

  def self.post_count
    @@writings.length
  end

end
