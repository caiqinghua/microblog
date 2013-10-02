FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "User #{n}" }
    sequence(:email) { |n| "user_#{n}@caiqinghua.com"}
    password "admin123"
    password_confirmation "admin123"

    factory :admin do
      admin true
    end
  end

  factory :micropost do
    content "Think Difference."
    user
  end

end