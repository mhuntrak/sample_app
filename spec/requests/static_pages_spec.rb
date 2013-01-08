require 'spec_helper'

describe "StaticPages" do

  let (:base_title) {"MySalesGame Bulk Upload"}
  
  describe "Home Page" do
  
    it "should have the right title" do
		visit '/static_pages/home'
		page.should have_selector('title', :text => "#{base_title} | Home")
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
		page.should have_selector('title', :text => "#{base_title} | Help")
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
		page.should have_selector('title', :text => "#{base_title} | About")
	end
  end
  
  describe "Contact Page" do
  
    it "should have the content 'Contact'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/contact'
      page.should have_content('Contact')
    end
	
	it "should have the right title" do
		visit '/static_pages/contact'
		page.should have_selector('title', :text => "#{base_title} | Contact")
	end
  end
end
