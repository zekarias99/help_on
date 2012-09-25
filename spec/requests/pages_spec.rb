require 'spec_helper'

describe "Pages" do

  subject { page }
 
  describe "Home page" do 
	  before { visit root_path }

    it { should have_selector('h1', text: "Helpo On")}
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: " | Home") }
  end 
 
  describe "About Us page" do 
    before { visit about_path }

    it { should have_selector('h1', text: "About Us") }
    it { should have_selector('title', text: full_title('About Us')) }
  end 
 
  describe " How It Works page" do 
    before { visit how_path }

    it { should have_selector('h1', text: "How It Works") }
    it { should have_selector('title', text: full_title('How It Works')) } 
  end 
 
  describe " Contact page" do 
    before { visit contact_path }

    it { should have_selector('h1', text: "Contact") }
    it { should have_selector('title', text: full_title('Contact')) }
  end 	
end

