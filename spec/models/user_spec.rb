require 'spec_helper'


describe "User" do
	before do
		@user = User.new(email:"testuser@example.com", password: "password")

	end
	subject { @user }
	it { should respond_to(:email)}

	it { should be_valid(:email)}

	describe  "when email is not present" do
		before { @user.email = " "}
		it {should_not be_valid}
	end

	describe "when email format is invalid" do
		it "should be invalid" do
			adressList = %w[user@foo,com user_at_me.org example.user@foo. foo@bar baz.com foo@bar+baz.com]
			adressList.each do |invalide_address|
				@user.email = invalide_address
				@user.should_not be_valid
			end
		end
	end  

	describe "when email format  is valid" do
		it "should be valid" do
			addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
			addresses.each do |valid_address|
				@user.email = valid_address
				@user.should be_valid
			end
		end
	end

	describe "when email adress is already taken" do
		before do
			user_with_same_email = @user.dup
			user_with_same_email.email = @user.email.upcase 
			user_with_same_email.save
		end
		it { should_not be_valid}
	end

	describe "when password ist too long" do
		before do
			@user.password = ("a" * 50) + "a"

		end
		it { should_not be_valid }
	end
	describe "when password ist to shoot long" do
		before do
			@user.password = ("a" * 0) + "a"
			
		end
		it { should_not be_valid }
	end
	describe "when password ist ok long" do
		before do
			@user.password = ("a" * 50) 
			
		end
		it { should be_valid }
	end
end
