class Course
  include DataMapper::Resource
  
  property :id, Serial
  timestamps :at 
end
