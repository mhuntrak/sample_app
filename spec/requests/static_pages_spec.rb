require 'spec_helper'

describe "StaticPages" do

  describe "Home Page" do
  
    it "should have the right title" do
		visit '/static_pages/home'
		page.should have_selector('title', :text => "MySalesGame Bulk Upload | Home")
	end
  end
  
  describe "Help Page" do
  
    it "should have the content 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      page.should have_content('Help')
    end
	
	it "should have the right title" do
		visit '/static_pages/help'
		page.should have_selector('title', :text => "MySalesGame Bulk Upload | Help")
	end
  end
  
  describe "About Page" do
  
    it "should have the content 'About'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/about'
      page.should have_content('About')
    end
	
	it "should have the right title" do
		visit '/static_pages/about'
		page.should have_selector('title', :text => "MySalesGame Bulk Upload | About")
	end
  end
end
