class Discussion
  include DataMapper::Resource
  
  property :id,        Serial
  property :title,     String,        :required => true, :length => 500
  property :content,   Text,          :required => true, :lazy => false
  property :user_id,   Integer,       :required => true
  property :thread_id, Integer
  timestamps :at 
  
  belongs_to :user
  belongs_to :thread, 'Discussion'
  has n, :posts, 'Discussion',:child_key => :thread_id
end
