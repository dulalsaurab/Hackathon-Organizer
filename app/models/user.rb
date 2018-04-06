class User < ApplicationRecord

    validates :user_name, presence: true, length: { maximum: 50 }, uniqueness: {case_sensitive: false}
    before_save { self.email = email.downcase }
    EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 150 }, format: {with: EMAIL}, uniqueness: {case_sensitive: false}
    #CHECK FOR QUICK SUBMISSIONS ADDING AN INDEX TO USEREMAIL. 6.29
    
    has_secure_password
    validates :password, presence: true, length: { minimum: 8 }
    

end
