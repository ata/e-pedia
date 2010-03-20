class DiscussionPost
  include DataMapper::Resource
  
  property :id,      Serial
  property :title,   String,        :required => true, :length => 500
  property :content, Text,          :required => true, :lazy => false
  timestamps :at 
  
  belongs_to :discussion
end
