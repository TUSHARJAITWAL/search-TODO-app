# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



# student = Student.create(
#     first_name:"Tushar",
#     last_name: "Jaitwal",
#     email: "tushar@gmail.com"
# )


# 20.times do |i|
#     puts "Creating student #{i+1}"
#     Student.create(
#         first_name: "Student #{i+1}",
#         last_name: "lname #{i+1}",
#         email: "#{i+1} Designer@gmail.com"
# )
# end


Student.all.each do |student|
    student.blogs.create(
        title: "Dummy Blog for student #{student.id}",
        content: "Custom content pending"
    )
    student.blogs.create(
        title: "Dummy Blog for student #{student.id}",
        content: "Custom content pending"
    )
end





