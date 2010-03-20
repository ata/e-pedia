class User
  include DataMapper::Resource
  
  property :id,       Serial
  property :login,    String,        :required => true, :length => 500
  property :password, String,        :required => true, :length => 500
  property :email,    String,        :required => true, :length => 500
  #property :group_id, Integer,       :required => true
  timestamps :at 
  
  belongs_to :group, 'UserGroup'
end
