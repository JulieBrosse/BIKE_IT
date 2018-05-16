# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

francis = User.create(
  name: "Francis",
  address: "Paris",
  email: "francis@gmail.com",
  password: "azerty")

johnny = User.create(
  name: "Johnny",
  address: "Paris",
  email: "johnny@gmail.com",
  password: "qsdfgh")



Bike.destroy_all



bikes = [
  {
    title: "Wou",
    description: "Super vélooo",
    address: "Rue du printemps",
    picture: "https://www.decathlon.fr/media/839/8390348/big_4dbcf0c6-3ced-459d-8d28-2adce4edb2c4.jpg",
    price: 60,
    tenant: johnny
    },
    {

    title: "Blabla",
    description: "vélooo de merttt",
    address: "Paris",
    picture: "https://www.decathlon.fr/media/839/8390348/big_4dbcf0c6-3ced-459d-8d28-2adce4edb2c4.jpg",
    price: 40,
    tenant: johnny
    },
    {

    title: "Wou",
    description: "quelle chiotte",
    address: "Bruxelles",
    picture: "https://www.decathlon.fr/media/839/8390348/big_4dbcf0c6-3ced-459d-8d28-2adce4edb2c4.jpg",
    price: 70,
    tenant: johnny
    },
    {

    title: "Wou",
    description: "Super vélooo",
    address: "HongKong",
    picture: "https://www.decathlon.fr/media/839/8390348/big_4dbcf0c6-3ced-459d-8d28-2adce4edb2c4.jpg",
    price: 80,
    tenant: johnny
    }
]

Bike.create!(bikes)

BikeRent.create(booking_date: Date.today, renter: francis, bike: Bike.first)



