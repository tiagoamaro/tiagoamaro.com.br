# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "admin", password: "admin123")
Post.create(title: "Title#1", body: "Body#1", user: User.find_by_username("admin"))
Post.create(title: "Title#2", body: "Body#2", user: User.find_by_username("admin"))
Post.create(title: "Title#3", body: "Body#3", user: User.find_by_username("admin"))
Post.create(title: "Title#4", body: "Body#4", user: User.find_by_username("admin"))
Post.create(title: "Title#5", body: "Body#5", user: User.find_by_username("admin"))