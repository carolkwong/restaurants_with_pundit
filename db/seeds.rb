puts "remove all existing users..."
User.destroy_all

puts "add placeholder user..."
template_user = User.create(email: "aa@bb.cc", password:"123123", password_confirmation: "123123")

puts "remove all restaurants..."
Restaurant.destroy_all

puts "add some placeholder restaurants..."
Restaurant.create(name: "McDonald", user: template_user)
Restaurant.create(name: "KFC", user: template_user)
Restaurant.create(name: "On Lee", user: template_user)

puts "Finish!"