# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bike.destroy_all



bikes = [
  {
    title: "Wou",
    description: "Super vélooo",
    address: "Rue du printemps",
    picture: "https://www.decathlon.fr/media/839/8390348/big_4dbcf0c6-3ced-459d-8d28-2adce4edb2c4.jpg"
    price: 60
    },
    {

    title: "Blabla",
    description: "vélooo de merttt",
    address: "Paris",
    price: 40
    },
    {

    title: "Wou",
    description: "quelle chiotte",
    address: "Bruxelles",
    price: 70
    },
    {

    title: "Wou",
    description: "Super vélooo",
    address: "HongKong",
    price: 80
    }
]

bikes.each { |bike| Bike.create(bike) }
