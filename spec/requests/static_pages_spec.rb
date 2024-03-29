require 'spec_helper'

describe "Static pages" do
  let(:base_title) { 'Wheedle' }

  describe "Home page" do
    it "should have the content 'Wheedle'" do
        visit '/static_pages/home'
        expect(page).to have_content('Wheedle')
      end

    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title( "#{base_title}")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "About page" do

    it "should have the content 'About the Wheedle Team'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

      it "should have the right title" do
        visit '/static_pages/about'
        expect(page).to have_title( "#{base_title} | About")
      end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the right title" do
      visit '/static_pages/contact'
      expect(page).to have_title( "#{base_title} | Contact")
    end
  end

  describe "Businesses page" do

    it "should have the content 'Businesses'" do
      visit '/static_pages/businesses'
      expect(page).to have_content('Businesses')
    end

    it "should have the right title" do
      visit '/static_pages/businesses'
      expect(page).to have_title( "#{base_title} | Businesses")
    end
  end

  describe "Interpreters page" do

    it "should have the content 'Interpreters'" do
      visit '/static_pages/interpreters'
      expect(page).to have_content('Interpreters')
    end

    it "should have the right title" do
      visit '/static_pages/interpreters'
      expect(page).to have_title( "#{base_title} | Interpreters")
    end
  end


end