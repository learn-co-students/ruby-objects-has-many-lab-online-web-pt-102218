class Post
    @@all=[]
    attr_accessor :author, :title
    def initialize(text)
        @title=text
        @@all.push(self)
    end
    def author_name
        if @author
            @author.name
        else
            nil
        end
    end
    def self.all
        @@all
    end
end