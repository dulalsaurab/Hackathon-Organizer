class User < ApplicationRecord
    has_many :hackathons
    has_many :proposals
=begin
    attr_accessor :remember_token
    before_save { self.email = email.downcase }
    validates :user_name, presence: true, length: { maximum: 50 }, uniqueness: {case_sensitive: false}
    EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 150 }, format: {with: EMAIL}, uniqueness: {case_sensitive: false}
    #CHECK FOR QUICK SUBMISSIONS ADDING AN INDEX TO USEREMAIL. 6.29
    
    has_secure_password
    validates :password, presence: true, length: { minimum: 8 }
    
    def self.encrypt(passwd)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost

        BCrypt::Password.create(passwd, cost: cost)
    end

    def self.new_token
        SecureRandom.urlsafe_base64
    end

    def remember
        self.remember_token = User.new_token
        update_attribute(:remember_me, User.encrypt(remember_token))
    end

    def auth?(remember_token)
        return false if remember_me.nil?
        BCrypt::Password.new(remember_me).is_password?(remember_token)
    end

    def forget
        update_attribute(:remember_me, nil)
    end
=end
end
