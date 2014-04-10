require 'spec_helper'


describe User do

	before(:each) do
		@attr = {
			:email => "user@example.com",
			:password => "changeme",
			:password_confirmation => "changeme"
		}

	end
	describe "should create a new instance given a valid attribute" do
		it "should create a new instance given a valid attribute" do
			@user = User.create!(@attr)
		end
	end 
	subject { @user }

	describe "when email format is invalid" do
		it "should be invalid" do
			adressList = %w[user@foo,com user_at_me.org example.user@foo. foo@bar baz.com foo@bar+baz.com]
			adressList.each do |invalide_address|
				no_valid_email_user = User.new(@attr.merge(:email => invalide_address))
				no_valid_email_user.should_not be_valid
			end
		end
	end  


	describe "should require an email address" do
		it "should require an email address" do
			no_email_user = User.new(@attr.merge(:email => " "))
			no_email_user.should_not be_valid
		end
	end


	describe " Password " do

		before(:each) do
			@user = User.new(@attr)
		end

		it "should have a password attribute" do
			@user.should respond_to(:password)
		end

		it "should have a password confirmation attribute" do
			@user.should respond_to(:password_confirmation)
		end
	end

	describe " Password validation " do
		it  " should reject long passwords" do
			long = ("a" * 50) + "a"
			hash = @attr.merge(:password => long, :password_confirmation => long )
			User.new(hash).should_not be_valid
		end

		it "should reject short password " do
			short = "a"*2
			hash = @attr.merge(:password =>short, :password_confirmation =>short)
			User.new(hash).should_not be_valid
		end


		it "should be ok" do
			password_ok = ("a" * 50) 
			hash = @attr.merge(:password =>password_ok, :password_confirmation => password_ok);
			User.new(hash).should be_valid

		end
	end
	describe "password encryption" do
		before (:each) do
			@user = User.create!(@attr)
		end
		it "should have an encrypted password attribute" do
			@user.should respond_to(:encrypted_password)
		end

		it "should set the encrypted password attribute" do
			@user.encrypted_password.should_not be_blank
		end
	end
end
