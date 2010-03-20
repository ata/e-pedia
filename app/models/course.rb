class Course
  include DataMapper::Resource
  
  property :id,         Serial
  property :full_name,  String,        :required => true, :length => 500
  property :short_name, String,        :required => true, :length => 500
  property :summary,    Text,          :required => true, :lazy => false
  timestamps :at
  belongs_to :author, 'User'
end
