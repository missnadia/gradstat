# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

students = Student.create([{ 
    username: "sfields",
    password: "password",
    email: "sallyfields@abc.com",
    first_name: "Sally",
    last_name: "Fields",
    admin: true
},
{
    username: "tbear",
    password: "password",
    email: "tbear@efg.com",
    first_name: "Teddy",
    last_name: "Bear",
    admin: false
}])

courses = Course.create([
    { name: "Introduction to Rails" },
    { name: "Rails Application Basics" },
    { name: "Rails MVC" },
    { name: "Rails Static Request" },
    { name: "Rails Hello World" },
    { name: "Video Review: Intro to Rails" },
    { name: "ActiveRecord Models and Rails" },
    { name: "ActiveRecord Models and Rails Lab" },
    { name: "Intro to REST" },
    { name: "RESTful Action Index Lab" },
    { name: "Rails Dynamic Request" },
    { name: "Rails Dynamic Request Lab" },
    { name: "Rails URL Helpers" },
    { name: "Rails URL Helpers Lab" },
    { name: "Rails form_tag" },
    { name: "Rails form_tag Lab" }
])