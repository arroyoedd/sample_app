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

require 'spec_helper'

describe User do
	before { 

		@user = User.new(name: "Example User", email: "user@example.com", password: "password", password_confirmation: "password")

	}
#before block runs the code inside the block before each example- in this case creating a new instance variable using User.new and a valid initialization hash

	subject { @user }#makes @user the default subject of the test example
	it { should respond_to(:name) } 
	it { should respond_to(:email) } 
#implicitly use the Ruby method respond_to?, which accepts a symbol and returns true if the object responds to the given method or attribute and false otherwise
	it { should respond_to(:password_digest) }
	#password digest is the encryption

	it { should respond_to(:password) }#first entered password
	it { should respond_to(:password_confirmation)} #password reentered for confirmation



	it { should be_valid }
	it { should respond_to(:authenticate)}#the method should respond to the authenticate
	
	describe "when name is not present" do
		before { @user.name = " "}
		it { should_not be_valid}
	end
	describe "when email is not present" do
		before { @user.email = " "}
		it { should_not be_valid}
	end
	describe "when a name is too long" do
		before { @user.name = "a" * 51}#this will just make instance of name "a....a"
		it { should_not be_valid}
	end

	describe "when an email format is invalid" do
		it "should be invalid" do
			addresses = %w[user@foo,com user_at_foo.org example.user@foo.foo@bar_baz.com foo@bar+baz.com]
			addresses.each do |invalid_address|
				@user.email = invalid_address
				@user.should_not be_valid
			end
		end
	end
	describe "when email format is valid" do
		it "should be valid" do
			addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
			addresses.each do |valid_address|
				@user.email = valid_address
				@user.should be_valid
			end
			
		end
	end
	describe "when an email address is already taken" do
		before do
			user_with_same_email = @user.dup#creates a duplicate user with the same attributes
			user_with_same_email.email = @user.email.upcase
			user_with_same_email.save
			
		end
		it { should_not be_valid}
	end
	describe "if password is not present" do
		before do
			@user.password = @user.password_confirmation = ''#ruby can make more than one assignment in a line
		it {should_not be_valid}
		end
	end
	describe "when the passwords do not match" do

		before do
			@user.password_confirmation = "mismatch"
			it {should_not be_valid}
		end
	end
	describe "when password confirmation is nil" do

		before do

			@user.password_confirmation = nil
			it { should_not be_valid}
		end

	end
	describe "return value of authenticate method" do
		before {@user.save}#save to db so it can be retrived using find_by_email
		let(:found_user){User.find_by_email(@user.email)}#assigning variable
	describe "with valid password" do
		it { should == found_user.authenticate(@user.password)}#if the password is valid then found_user from email search now authenticate password
	end
	describe "with invalid password" do
		let(:user_for_invalid_password){ found_user.authenticate("invalid")}
		#let method provides a convenient way to create local variables inside tests
		it { should_not == user_for_invalid_password}
		specify { user_for_invalid_password.should be_false}#specify is a synonym for it


	end
	end
	
end
