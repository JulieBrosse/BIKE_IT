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

gilbert = User.create(
  name: "Gilbert",
  address: "Paris",
  email: "gilbert@gmail.com",
  password: "azerty")

claude = User.create(
  name: "Claude",
  address: "Paris",
  email: "claude@gmail.com",
  password: "azerty")

jocelyne = User.create(
  name: "Jocelyne",
  address: "Paris",
  email: "joselyne@gmail.com",
  password: "azerty")


Bike.destroy_all



bikes = [
  {
    title: "Vélo enfant",
    description: "Vélo enfant 2/5 ans en bon état, vendu avec les roulettes et porte gourde",
    address: "110 cours Saint Louis, 33000, Bordeaux",
    picture: "https://img1.leboncoin.fr/ad-large/a91f3cd5d317b2bf322dc625b067388090bba60e.jpg",
    price: 10,
    tenant: claude
    },
    {

    title: "Vélo à pignon fixe",
    description: "Vélo à pignon fixe ou roue libre.
                  Pattes arrières piste
                  Cadre aluminium
                  Peinture Epoxy (très résistante aux chocs)
                  Roue Purfixe (Ar Flip Flop)
                  Cintre type bullhorn Cinelli
                  Potence Cinelli
                  Tige de selle Cinelli
                  Étrier de frein AR Shimano Ultégra
                  Chaîne renforcé
                  Boîtier de pédalier Shimano
                  Pédales purfixe + straps
                  Vélo état neuf.",
    address: "15 cours Portal, 33000, Bordeaux",
    picture: "https://img4.leboncoin.fr/ad-large/0a13615fb12ac3fe7dff015acee29938c8cbc2bb.jpg",
    price: 50,
    tenant: gilbert
    },
    {

    title: "VTT Cannondale 24 pouces",
    description: "VTT Cannondale 24 pouces Trail
                  Vélo enfant en très bon état
                  Lapierre BMC KTM",
    address: "50 rue de la Croix Nivert, 75015, Paris",
    picture: "https://img3.leboncoin.fr/ad-large/0ef12c16ef88c2b30847620e72b3b3fed96c212d.jpg",
    price: 35,
    tenant: johnny
    },
    {

    title: "Vélo hollandais Amsterdamer",
    description: "8 vitesses dans le moyeux permet de passer les vitesses à l,arrêt.
                  Pneus ballon pour confort et adhérence.
                  Phare avant dynamo 40lux.
                  Antivol sur cadre.
                  Porte-bagages arrière.
                  Frein arrière par rétropédalage.",
    address: "25 rue de Lourmel, 75015, Paris",
    picture: "https://img7.leboncoin.fr/ad-large/6f65d2823eeaae29d69adcd88106490b7a24979d.jpg",
    price: 30,
    tenant: jocelyne
    },

    {
    title: "Vélo route wilier 2017 neuf",
    description: "Wilier gtr sl taille L 1m75 1m84 vert acid ultegra 6800 pédalier 8000 roues shimano",
    address: "2 cours Saint Louis, 33000, Bordeaux",
    picture: "https://img4.leboncoin.fr/ad-large/26a34b32b98a1255be7c6e278310b0fd89af646f.jpg",
    price: 40,
    tenant: claude
    },

    {
    title: "Vélo électrique Winora Radar Tour 2017",
    description: "Vends vélo à assistance électrique (VAE)
                  Modèle Winora Radar Tour, taille 48 (convient pour tailles de 1m70 à 1m85
                  Batterie et moteur harmonieusement intégrés dans le cadre et donc à peine visibles au premier coup d’oeil",
    address: "110 cours Saint Louis, 33000, Bordeaux",
    picture: "https://img1.leboncoin.fr/ad-large/a91f3cd5d317b2bf322dc625b067388090bba60e.jpg",
    price: 50,
    tenant: jocelyne
    },

    {
    title: "Velo électrique fat bike",
    description: "Fat bike électrique neuf surpuissant
                    batterie lithium Samsung 15,6Ah/48V 750 Watts
                    velo garantie
                    Super autonomie super confortable et très sécurisant
                    Vendu monté,préparé,et réglé",
    address: "110 rue Camille Godard, 33000, Bordeaux",
    picture: "https://img2.leboncoin.fr/ad-large/595037f37fa1e5fb3ef71e0c1546b77b05e6050f.jpg",
    price: 50,
    tenant: claude
    },

    {
    title: "Velo vtc topbike ballade",
    description: "Velo vtc top bike ballade en tres bon etat et peu utiliser
                  taille moyen / grand
                  21 vitesses",
    address: "110 cours Balguerie Stuttenberg, 33000, Bordeaux",
    picture: "https://img5.leboncoin.fr/ad-large/ec7a94bcc3ddc4ed20ba273534767416d8d5bc10.jpg",
    price: 15,
    tenant: jocelyne
    },

    {
    title: "Vélo de route CKT taille S",
    description: "Vélo route Carbone CKT taille S
                  Équipé en Campagnolo Pédalier Most ",
    address: "20 rue de l'Université, 75007, Paris",
    picture: "https://img6.leboncoin.fr/ad-large/3fc461630dec0152eb488ebf1c031072cb395f51.jpg",
    price: 25,
    tenant: claude
    },

    {
    title: "VTT vélo Adulte Road Storm",
    description: "VTT Road Storm. Double suspensions. Garde-boue avant. Vitesses poignet.",
    address: "19 rue Saint-Charles, 75015, Paris",
    picture: "https://img2.leboncoin.fr/ad-large/3d8787af03ebbdfa36421227591c2c6bec9f1e94.jpg",
    price: 10,
    tenant: jocelyne
    },

    {
    title: "Vélo scrapper tout suspendu adulte",
    description: "x9 vitesse, frein hydraulique à disque, Taille L pour personne d'environ 1m70-1m80, taille des roues : 27,5 pouces",
    address: "10 place de la Bourse, 33000, Bordeaux",
    picture: "https://img5.leboncoin.fr/ad-large/aee623d01411edb900bb1e1950d0c58fcd8502e1.jpg",
    price: 23,
    tenant: claude
    },
]

Bike.create!(bikes)

BikeRent.create(booking_date: Date.today, renter: francis, bike: Bike.last)



