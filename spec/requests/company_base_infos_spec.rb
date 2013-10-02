require 'spec_helper'

describe "CompanyBaseInfos" do

  describe "Home page" do
    before {visit home_path}

    subject {page}

    it {should have_content('Xiaoshoutai Microblog')}
    it {should have_title('Xiaoshoutai Microblog')}
    it {should_not have_title('| Home')}

    it "should have the content 'Xiaoshoutai Microblog'" do
      expect(page).to have_content('Xiaoshoutai Microblog')
    end

    it "should have the right title" do
  	  expect(page).to have_title("Xiaoshoutai Microblog")
      expect(page).not_to have_title("| Home")
	  end
    
    describe "for signed-in users" do
      let(:user) { FactoryGirl.create(:user) }
      before do
        FactoryGirl.create(:micropost, user: user, content: "Lorem ipsum")
        FactoryGirl.create(:micropost, user: user, content: "Dolor sit amet")
        sign_in user
        visit root_path
      end

      it "should render the user's feed" do
        user.feed.each do |item|
          expect(page).to have_selector("li##{item.id}", text: item.content)
        end
      end
    end
  end

  describe "Help page" do
    it "should have the content 'Xiaoshoutai Microblog Help'" do
      visit help_path
      expect(page).to have_content('Xiaoshoutai Microblog Help')
    end

    it "should have the right title" do
	  visit help_path
	  expect(page).to have_title("Xiaoshoutai Microblog | Help")
	end

  end

  describe "About page" do
    it "should have the content 'Xiaoshoutai Microblog About Us'" do
      visit about_path
      expect(page).to have_content('Xiaoshoutai Microblog About Us')
    end

    it "should have the right title" do
	  visit about_path
	  expect(page).to have_title("Xiaoshoutai Microblog | About Us")
	end

  end

  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit contact_path
      expect(page).to have_content('Contact')
    end

    it "should have the right title" do
	  visit contact_path
	  expect(page).to have_title("Xiaoshoutai Microblog | Contact")
	end

  end

end
