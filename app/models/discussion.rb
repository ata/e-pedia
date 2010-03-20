class Discussion
  include DataMapper::Resource
  
  property :id,    Serial
  property :title, String,        :required => true, :length => 500
  timestamps :at 
  
  belongs_to :author, 'User'
  has n, :posts, 'DiscussionPost'
end
