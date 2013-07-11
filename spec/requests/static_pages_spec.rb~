require 'spec_helper'


describe "Static Pages" do

subject { page }
let(:base_title){"Ruby Project"}


 describe "Home page" do
 before{ visit root_path }
 
    it {should have_selector('h3', :text => full_title(''))}
    it {should have_selector('h1', :text => 'Sample App')}
    it {should_not have_selector('h3', :text => '| Home')}
    
      
	 
      
 end
 describe "Help" do
 before{visit help_path}
 
    it {should have_selector('h3', :text => full_title('Help'))}
    
    it {should have_selector('h1', :text => 'Help')}
      
 end
 
 describe "About" do
 
 
    it "should have the about h3" do
      visit about_path
      page.should have_selector('h3', :text => "| About")
      end
      
    it "should have the h1 'About'" do
      visit about_path
      page.should have_selector('h1', :text => 'About')
      end
    
      
 end
 describe "Contact" do
 
 
    it "should have the contact h3" do
      visit contact_path
      page.should have_selector('h3', :text => "| Contact")
      end
      
    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', :text => 'Contact')
      end
    
      
 end
end