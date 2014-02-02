require 'spec_helper'
#http://stackoverflow.com/questions/5865555/how-to-do-integration-testing-with-rspec-and-devise-cancan
#require_relative '../factories/login_user'

#describe "GET /things" do
 # it "test access to things, works with a signed in user" do
  #  sign_in_as_a_valid_user
  #  get things_path
  #  response.status.should be(200)
  #end
#end

#describe "GET /things" do
 # it "test access to things, does not work without a signed in user" do
 #   get things_path
 #   response.status.should be(302) # redirect to sign in page
 # end
#end

describe "index" do
  it "redirects to home page" do
    sign_in_as_a_user 
    visit db_connections_path
    page.should_not have_content 'content'
  end
end
