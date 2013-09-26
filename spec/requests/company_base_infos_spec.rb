require 'spec_helper'

describe "CompanyBaseInfos" do

  describe "Home page" do

    it "should have the content 'Xiaoshoutai Microblog Home'" do
      visit '/company_base_info/home'
      expect(page).to have_content('Xiaoshoutai Microblog Home')
    end

    it "should have the right title" do
	  visit '/company_base_info/home'
	  expect(page).to have_title("Xiaoshoutai Microblog")
    expect(page).not_to have_title("| Home")
	end

  end

  describe "Help page" do
    it "should have the content 'Xiaoshoutai Microblog Help'" do
      visit '/company_base_info/help'
      expect(page).to have_content('Xiaoshoutai Microblog Help')
    end

    it "should have the right title" do
	  visit '/company_base_info/help'
	  expect(page).to have_title("Xiaoshoutai Microblog | Help")
	end

  end

  describe "About page" do
    it "should have the content 'Xiaoshoutai Microblog About Us'" do
      visit '/company_base_info/about'
      expect(page).to have_content('Xiaoshoutai Microblog About Us')
    end

    it "should have the right title" do
	  visit '/company_base_info/about'
	  expect(page).to have_title("Xiaoshoutai Microblog | About Us")
	end

  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/company_base_info/contact'
      expect(page).to have_content('Contact')
    end

    it "should have the right title" do
	  visit '/company_base_info/contact'
	  expect(page).to have_title("Xiaoshoutai Microblog | Contact")
	end

  end

end
