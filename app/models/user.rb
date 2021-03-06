# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class User < ActiveRecord::Base
#mean that the User class inherits from ActiveRecord::Base, so that the User model automatically has all the functionality of the ActiveRecord::Base class  

	attr_accessible :email, :name, :password, :password_confirmation
	#for security purposes could also use attr_accessible(:email, :name) where :email and :name are hash parameters
	has_secure_password
	before_save { |user| user.email = email.downcase}
	#iterate each user and store lower case email address

	validates :name, presence: true, length: { maximum: 50}
	#validates is just a method and can be written validates(:name, presence: true, length). The way to validate the presence of the name attribute where the argument is presence:true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
	
	validates :password, presence: true, length: { minimum: 6}
	validates :password_confirmation, presence: true
	
	
end
