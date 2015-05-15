class User < ActiveRecord::Base
  authenticates_with_sorcery!
     
      
      validates :email,                   presence: true, uniqueness: true
      validates :password,                presence: true, confirmation: true, length: { minimum: 3}
      validates :password_confirmation,   presence: true
end
