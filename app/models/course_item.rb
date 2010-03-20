class CourseItem
  include DataMapper::Resource
  
  property :id,    Serial
  property :title, String,        :required => true, :length => 500
  timestamps :at 
  
  belongs_to :course
end
