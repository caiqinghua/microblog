namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Admin",
                         email: "admin@caiqinghua.com",
                         password: "admin123",
                         password_confirmation: "admin123",
                         admin: true)

    second_admin = User.create!(name: "Second Admin",
                         email: "second_admin@caiqinghua.com",
                         password: "admin123",
                         password_confirmation: "admin123",
                         admin: true)

    User.create!(name: "Example User",
                 email: "example@caiqinghua.com",
                 password: "admin123",
                 password_confirmation: "admin123")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@caiqinghua.com"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end 