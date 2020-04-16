# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)






u1 = User.new
u1.email = 'austinsmith845@example.com'
u1.password='gamer123'
u1.password_confirmation = 'gamer123'
#u1.encrypted_password = '$2a$11$1wyHotsKELPEAJjSO7LJ.eyPRCwV4d.QBiG9TnT2W/SVhBb5s4Mwegame'
u1.name= 'Austin Smith'
u1.user_name="austinsmith845"
u1.is_seller = true

u1.save!



u2 = User.new
u2.email = 'wsmith8@example.com'
u2.password='gamer123'
u2.password_confirmation = 'gamer123'
#u2.encrypted_password = '$2a$11$1wyHotsKELPEAJjSO7LJ.eyPRCwV4d.QBiG9TnT2W/SVhBb5s4Mwegame'
u2.name= 'William Smith'
u2.user_name="wsmith845"

u2.save!

m1 = Message.create!(
    user: u1,
    content: 'This is a test message',
    recipient: 'austinsmith845',
    sender: 'wsmith845',
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

