# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create!(
    email: 'alice@gmail.com',
    password: 'password'
)
  
u2 = User.create!(
    email: 'bob@gmail.com',
    password: 'password'
)


i1= Item.create!(
    creator: u1,
    name: 'AcerLaptop',
    description: '8th Gen 4GB DDR4 RAM',
    price: '1200',
    category: 'Electronics'
)

i2 = Item.create!(
    creator: u2,
    name: 'HP Laptop',
    description: '8th Gen 8GB DDR4 RAM',
    price: '1300',
    category: 'Electronics'
)
