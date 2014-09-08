require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Wheedle'" do
      visit '/static_pages/home'
      expect(page).to have_content('Wheedle')
    end
  end

  describe "About page" do

    it "should have the content 'About the Wheedle Team'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end

  it "should have the right title" do
    visit '/static_pages/home'
    expect(page).to have_title("Wheedle | Home")
  end

end