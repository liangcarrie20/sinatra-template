10.times do
  User.create!(username: Faker::Name.first_name, email: Faker::Internet.email, password: '123')  
end