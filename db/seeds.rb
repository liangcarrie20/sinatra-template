10.times do
  User.create(first_name: Faker::Name.first_name,  username: Faker::Superhero.name, email: Faker::Internet.email, password: '123')  
end