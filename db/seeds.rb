10.times do
  User.create!(first_name: Faker::Name.first_name, username: Faker::Name.last_name, email: Faker::Internet.email, password: '123')  
end