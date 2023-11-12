# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Book.create!(
  [
    {
      title: "FirstBook",
      author: "Sergio Montiel",
      description: "The first book in this WebApp",
      reading_status: 0
    },
    {
      title: "SecondBook",
      author: "Daniella Sosa",
      description: "The second book in this WebApp",
      reading_status: 0
    }
  ]
)