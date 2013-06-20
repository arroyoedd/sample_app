require 'spec_helper'

describe "Home page" do
  describe "/static_pages/home" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
      end
      end
      
 describe "Help page" do
	  describe "/static_pages/help" do
   	 it "should have the content 'Help'" do
      	visit '/static_pages/help'
      	page.should have_content('Help')
      	end
      end
 describe "About page" do     
  describe "/static_pages/about" do
    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
      end
      
      end
   end   
  end
end
