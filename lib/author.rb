require 'pry'
class Author
attr_accessor :name
@@post_count=0

def initialize(name)
    @name=name
    @posts=[]
end

def posts
    Post.all.select do |post|
        post.author=self
       end
end 

def add_post(post)
    post.author==self
    #binding.pry
end
 def add_post_by_title(title)
post =Post.new(title)
self.posts<<post
post.author==self
 end 

 def self.post_count
    Post.all.length
 end 
end 