class User < ApplicationRecord
	attr_accessor :password_2

	validates_presence_of :email,:user_name,:password,:category_id,:status,:email_verification
    validates_uniqueness_of :email
    has_many :students, dependent: :destroy
    has_many :centers, dependent: :destroy
    has_many :teachers, dependent: :destroy
    has_one :address, dependent: :destroy
    has_many :comments, dependent: :destroy
    belongs_to :category
    before_save :digestPassword
	def digestPassword
		self.password = addSalt(self.password)
	end
	def addSalt(password)
		return Digest::SHA1.hexdigest("Amit has encrypted the password with #{password}")
	end
end
