class User
  include DataMapper::Resource
  
  property :id,        Serial
  property :nickname,  String,        :required => true, :length => 500
  property :email,     String,        :required => true, :length => 500
  property :complete,  Boolean,       :required => true
  property :full_name, String,        :required => true, :length => 500
  timestamps :at 
end
