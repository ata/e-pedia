class UserGroup
  include DataMapper::Resource
  
  property :id,   Serial
  property :name, String,        :required => true, :length => 500
  timestamps :at 
  
  has n, :users
  has n, :roles
  def to_s()
    @name
  end
end
