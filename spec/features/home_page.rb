require "rails_helper"

feature "home page" do
  
  before(:each) do
    visit "/"
  end
    
  describe "visiting the home page" do
    it "should show the website name" do
      expect(page).to have_text("letters unsent.")
    end
    
    it "should show gallery text" do
      expect(page).to have_text("gallery")
    end
    
    it "should show 'about' link" do
      expect(page).to have_text("about")
    end
    
    it "should show 'contact' link" do
      expect(page).to have_text("contact")
    end
  end
  
  describe "hovering over the gallery text" do
    before(:each) do
      page.find('#gallery_link').trigger(:mouseover)
    end
    
    it "should display a drop down table" do
      expect(page).to have_text("photos")
      expect(page).to have_text("text")
    end
  end
  
  describe "hovering away from the gallery text" do
    before(:each) do
      page.find('#gallery_link').trigger(:mouseover)
      expect(page).to have_text("photos")
    
      page.find('#gallery_link').trigger(:mouseout)
    end
    
    it "should hide the drop down table" do
      expect(page).to_not have_text("photos")
      expect(page).to_not have_text("text")
    end
  end
  
end