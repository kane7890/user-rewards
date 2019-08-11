# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ken=User.create(name: "Kenneth", points: 20, city: "Newark", state: "NJ", password: "NJIT", password_confirmation "NJIT")
emmie=User.create(name: "Emmie", points: 10, city: "Kingston", state: "NY")
brian=User.create(name: "Brian", points: 2, city: "Jersey City", state: "NJ")
monica=User.create(name: "Monica", points: 7, city: "Philadelphia", state: "PA")
david=User.create(name: "David", points: 8, city: "San Francisco", state: "CA")
coffee=Genre.create(name: "coffee")
conveniencestore=Genre.create(name: "convenience")
gasoline=Genre.create(name: "gas station")

coffeehouse=Store.new(name: "Coffee House", city: "Edison", state: "NJ", point_value: 2)
coffeehouse.genre=coffee
coffeehouse.save
coffeebar=Store.new(name: "Coffee Bar", city: "Milltown", state: "NJ", point_value: 3)
coffeebar.genre=coffee
coffeebar.save


melaos=Store.new(name: "Melaos", city: "Ossining", state: "NY", point_value: 1)
melaos.genre=coffee
melaos.save


woodwawa=Store.create(name: "Wawa", city: "Woodbury", state: "NY", point_value: 5, genre_id: conveniencestore.id)
stewarts=Store.create(name: "Stewarts Shops", city: "Kingston", state: "NY", point_value: 2, genre_id: conveniencestore.id)
quickchek=Store.create(name:"QuickChek", city:"Gardenia", state: "NJ", point_value: 2, genre_id: conveniencestore.id)
union76=Store.create(name: "Union76", city: "Chicago", state: "IL", point_value: 1, genre_id: gasoline.id)
