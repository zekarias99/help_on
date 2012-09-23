require 'spec_helper'

describe "Pages" do
 
  describe "Home page" do 
	  
    it "should have the h1 'Helpo On'" do

	    visit '/pages/home'
	    page.should have_selector('h1', :text => "Helpo On")
	  end

    it "should have the base title" do
      visit '/pages/home'
      page.should have_selector('title',:text => "Helpo On")
    end 

    it "should not have a custom page title" do
      visit '/pages/home'
      page.should_not have_selector('title', :text => " | Home")       
    end
  end 
 
  describe "About Us page" do 
	  
    it "should have the h1 'About Us'" do

	    visit '/pages/about'
	    page.should have_selector('h1', :text => "About Us")
	end

    it "should have the right title" do
      visit '/pages/about'
      page.should have_selector('title',:text => "Helpo On | About Us")
    end 
  end 
 
  describe " How It Works page" do 
	  
    it "should have the h1 'How It Works'" do

	    visit '/pages/how'
	    page.should have_selector('h1', :text => "How It Works")
	end

    it "should have the right title" do
      visit '/pages/how'
      page.should have_selector('title',:text => "Helpo On | How It Works")
    end 
  end 
 
  describe " Contact page" do 
	  
    it "should have the h1 'Contact" do
      visit '/pages/contact'
	    page.should have_selector('h1', :text => "Contact")
	  end

    it "should have the right title" do
      visit '/pages/contact'
      page.should have_selector('title',:text => "Helpo On | Contact")
    end
  end 	
end

