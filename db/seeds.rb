# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

puts "Truncating"
ActiveRecord::Base.connection.execute("
  TRUNCATE users RESTART IDENTITY CASCADE;  
")

puts "Creating Users"
10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    birthday: Faker::Date.birthday,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end
