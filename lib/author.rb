class Author
    attr_accessor :name, :posts
    @@all_posts =[]
    def initialize(name)
        @name=name
        @posts=[]
    end
    def add_post(post)
        post.author = self
        @posts.push(post)
        @@all_posts.push(post)
    end
    def add_post_by_title(title)
        self.add_post(Post.new(title))
    end
    def self.post_count
        @@all_posts.length
    end
end