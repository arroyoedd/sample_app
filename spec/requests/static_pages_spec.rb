require 'spec_helper'


describe "Static Pages" do


 describe "Home page" do
 
 
    it "should have the right title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "| Home")
      end
      
    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
      end
    
      
 end
 describe "Help" do
 
 
    it "should have the help title" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "| Help")
      end
      
    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
      end
    
      
 end
 describe "About" do
 
 
    it "should have the about title" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "| About")
      end
      
    it "should have the h1 'About'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About')
      end
    
      
 end
 describe "Contact" do
 
 
    it "should have the contact title" do
      visit '/static_pages/contact'
      page.should have_selector('title', :text => "| Contact")
      end
      
    it "should have the h1 'Contact'" do
      visit '/static_pages/contact'
      page.should have_selector('h1', :text => 'Contact')
      end
    
      
 end
end