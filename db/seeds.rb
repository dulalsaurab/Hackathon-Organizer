# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#create_table :users do |t|
#      t.string :user_name
#      t.string :email
#      t.string :passworld
#      t.string :phone
#
#
#
user_1 = User.new(user_name: 'Alex', email: 'aaaa@aaa.com', passworld: 'topsecret' )
user_2 = User.new(user_name: 'Saurab', email: 'aaaa@aaa.com', passworld: 'topsecret' )
user_3 = User.new(user_name: 'Sajib', email: 'aaaa@aaa.com', passworld: 'topsecret' )
admin = User.new(user_name: 'Admin', email: 'aaaa@aaa.com', passworld: 'topsecretadmin', admin: true )

hackathon_1 = Hackathon.new(title: 'First one ever', topic: 'fantasy', description: 'The coolest', owner: 1, start_date: '2012/03/11', end_date: '2012/03/11', hackathon_venue: "west minister")

user_1.save!
user_2.save!
user_3.save!
admin.save!
hackathon_1.save!