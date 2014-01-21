require 'spec_helper'

describe "Static pages" do

  let(:base_title) { "dataclips.io" }

  describe "Home page" do
    it "should have the content 'Hello, world!'" do 
      visit home_path
      page.should have_selector('h1', :text => 'Hello, world!')
    end 
    it "should have the title 'Home'" do
    visit home_path
    page.should have_selector('title', :content  => "Home")
  end

  end

describe "Contact page" do
  it "should have the h1 'Contact'" do
    visit contact_path
    page.should have_selector('h1', :text => 'Contact')
end
it "should have the title 'Contact'" do
  visit contact_path
    page.should have_selector('title', :content  => "Contact")
  end
end


describe "About page" do
  it "should have the h1 'About us'" do
    visit about_path
    page.should have_selector('h1', :text => 'About us')
end
it "should have the title 'About us'" do
    visit about_path
    page.should have_selector('title', :content  => "#{base_title} | About us")
  end
end
end