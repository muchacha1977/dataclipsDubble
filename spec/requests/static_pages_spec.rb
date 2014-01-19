require 'spec_helper'

describe "Static pages" do
  describe "Home page" do
    it "should have the content 'Sample App'" do 
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end 
  end

describe "About page" do
    before { visit about path }
	  it { should have selector('h1', text: 'About') }
	  it { should have selector('title', text: full_title('About us')) }
	end
describe "Contact page" do
	before { visit contact path }
 		it { should have selector('h1', text: 'Contact') }
		it { should have selector('title', text: full_title('Contact')) }
	end
end
