class Blueprint

@@blog_posts= []
@@num_blog_posts = 0

def self.all
  @@blog_posts
end

def self.add(thing)
  @@blog_posts << thing
  @@num_blog_posts+=1
end


def self.publish
  @@blog_posts.each do |post|
    puts "Title: #{post.title}"
    puts "Content:  #{post.body}"
    puts "Date: #{post.publish_date}"
  end
end
end

class Blogpost <Blueprint
  def self.create
  post =new
  puts "Give a title to your post"
  post.title = gets
  puts "Insert blog content"
  post.body = gets
  post.publish_date= Time.now
  post.save
  puts "Would you like to create another post Y/N?"
  create if gets.chomp.downcase == "y"
end
def title
  @title
end

def title= (title)
  @title = title
end

def publish_date
  @publish_date
end

def publish_date= (publish_date)
  @publish_date=publish_date
end

def body
  @body
end
def body= (body)
  @body = body
end
def save
  Blogpost.add (self)
end
end
Blogpost.create
blog_posts=Blogpost.all
puts blog_posts.inspect
Blogpost.publish
