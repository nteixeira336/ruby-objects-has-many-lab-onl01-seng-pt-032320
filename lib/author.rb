class Author 
  
  @@all = []
  @@post_count = 1 
  
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @posts = []
  end 
  
  def posts 
    Post.all.select do |post|
     post.author = self 
    end 
  end 
  
  def add_post(post)
    self.posts << post 
    post.author == self 
    @@post_count += 1 
  end 
  
  def add_post_by_title(title)
    post = Post.new(title)
    self.posts << post 
    post.author = self 
    @@post_count += 1 
  end 
  
  def self.post_count 
    
end 