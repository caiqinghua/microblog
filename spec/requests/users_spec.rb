require 'spec_helper'

describe "Users" do

  subject { page }

  describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title(page_full_title('Sign up')) }
  end
end
