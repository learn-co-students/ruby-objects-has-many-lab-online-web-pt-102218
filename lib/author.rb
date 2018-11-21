require "pry"

class Author
  attr_accessor :post, :name

  @@posts = []

  def initialize(name)
    @name = name
  end


end
