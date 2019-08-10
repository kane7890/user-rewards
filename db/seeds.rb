# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ken=User.create(name: "Kenneth", points: 20, city: "Newark", state: "NJ")
emmie=User.create(name: "Emmie", points: 10, city: "Kingston", state: "NY")
brian=User.create(name: "Brian", points: 2, city: "Jersey City", state: "NJ")
monica=User.create(nane: "Monica", points: 7, city: "Philadelphia", state: "PA")
david=User.create(name: "David", points: 8, city: "San Francisco", state: "CA")

coffeehouse=Store.create(name: "Coffee House", city: "Edison", state: "NJ", point_value: 2)
coffeebar=Store.create(name: "Coffee Bar", city: "Milltown", state: "NJ", point_value: 3)
melaos=Store.create(name: "Melaos", city: "Ossining", state: "NY", point_value: 1)
woodwawa=Store.create(name: "Wawa", city: "Woodbury", state: "NY", point_value: 5)
stewarts=Store.create(name: "Stewarts Shops", city: "Kingston", state: "NY", point_value: 2)
quickchek=Store.create(name:"QuickChek", city:"Gardenia", state: "NJ", point_value: 2)
union76=Store.create(name: "Union76", city: "Chicago", state: "IL", point_value: 1)
