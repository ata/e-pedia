class Setting
  include DataMapper::Resource
  
  property :id,    Serial
  property :skey,  String,        :required => true, :length => 500
  property :value, String,        :required => true, :length => 500
  timestamps :at 
end
