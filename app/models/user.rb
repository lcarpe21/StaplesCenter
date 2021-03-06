class User < ApplicationRecord
    has_many :articles
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    before_save { self.email = email.downcase }
    
    validates :name,
        presence: true,
        length: { maximum: 12 }
    
    validates :email,
        presence: true,
        length: { maximum: 255 },
        format: { with: VALID_EMAIL_REGEX },
        uniqueness: { case_sensitive: false }
        
    validates :password,
        presence: true,
        length: { minimum: 6 },
        :format => {:with => /\A(?=.*[a-zA-Z])(?=.*[0-9]).{6,}\Z/, message: "must be at least 6 characters and include one number and one letter."}
        
    has_secure_password
end
