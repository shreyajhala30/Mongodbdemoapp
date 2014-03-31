class User
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :crypted_password, type: String 
  field :salt, type: String
  validates_presence_of :name,:email
end
