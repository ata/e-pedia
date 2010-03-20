class Role
  include DataMapper::Resource
  
  property :id,   Serial
  property :code, String,        :required => true, :length => 500
  property :name, String,        :required => true, :length => 500
  timestamps :at 
  
end
