class User < ApplicationRecord
    has_many :hackathons
    has_many :proposals
    acts_as_voter
    ##FOLLOWERS
    has_many :active_relationships, class_name:  "Relationship",
                                    foreign_key: "follower_id",
                                    dependent: :destroy
    
    
    has_many :passive_relationships, class_name:  "Relationship",
                                   foreign_key: "followed_id",
                                   dependent:   :destroy
    
    has_many :following, through: :active_relationships, source: :followed
    has_many :followers, through: :passive_relationships, source: :follower
    ##REGISTRATION FOR HACKATHONS
    
    

    attr_accessor :remember_token
    before_save { self.email = email.downcase }
    validates :user_name, presence: true, length: { maximum: 50 }, uniqueness: {case_sensitive: false}
    EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true, length: { maximum: 150 }, format: {with: EMAIL}, uniqueness: {case_sensitive: false}
    #CHECK FOR QUICK SUBMISSIONS ADDING AN INDEX TO USEREMAIL. 6.29
    
    has_secure_password
    validates :password, presence: true, length: { minimum: 8 }

    validates :description, length: { maximum: 140}
    
    def follow(other_user)
        following << other_user
    end

    def unfollow(other_user)
        following.delete(other_user)
    end

    def following?(other_user)
        following.include?(other_user)
    end

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

end
