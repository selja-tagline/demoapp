# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Student.all.each do |student|
    student.blogs.create(title: "dummy Blog #{student.id}", content:"Lorem ipsum dummy text")
    student.blogs.create(title: "dummy Blog #{student.id}", content:"Lorem ipsum dummy text")
end

User.all.each do |user|
    user.update(password: "user@123")
end