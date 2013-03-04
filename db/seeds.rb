# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.find_or_create_by_username(username: "admin", password: "admin123", nickname: "Tiago Amaro")
100.times do |index|
  alphabet =  [('a'..'z'),('A'..'Z')].map{|i| i.to_a}.flatten
  string  =  (0...350).map{ alphabet[rand(alphabet.length)] }.join
  Post.find_or_create_by_title(title: "Title##{index}", body: string, user: User.find_by_username("admin"))
end