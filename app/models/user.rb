class User
  include Mongoid::Document
    authenticates_with_sorcery!
    field :email, :type => String
    field :crypted_password,:type => String 
    field :salt,:type => String 

  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
end
