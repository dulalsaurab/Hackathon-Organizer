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
#user_1 = User.new(user_name: 'Alex', email: 'aaaa@aaa.com', passworld: 'topsecret' )
#user_2 = User.new(user_name: 'Saurab', email: 'aaaa@aaa.com', passworld: 'topsecret' )
#user_3 = User.new(user_name: 'Sajib', email: 'aaaa@aaa.com', passworld: 'topsecret' )
#admin = User.new(user_name: 'Admin', email: 'aaaa@aaa.com', passworld: 'topsecretadmin', admin: true )


=begin
User.create!(user_name:  "Admin",
             email: "admin@admin.com",
             password:              "password",
             password_confirmation: "password",
             admin: true)

10.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@hkorg.com"
    password = 'password'
    User.create!(user_name: name,
                 email: email,
                 password: password,
                 password_confirmation: password)
end

proposal_1= Proposal.new(userId: 1, title: 'first proposal', hkId: 1, description: 'hello world', customForm: 'form', votes: 0)
proposal_2= Proposal.new(userId: 2, title: '2nd proposal', hkId: 2, description: 'hello world', customForm: 'form', votes: 0)
proposal_1.hackathon= hackathon_1
proposal_2.hackathon= hackathon_1

proposal_1.hackathon= hackathon_2
proposal_2.hackathon= hackathon_2

#user_1.save!
#user_2.save!
#user_3.save!
#admin.save!
hackathon_1.save!
hackathon_2.save!
=end

user_1 = User.new(user_name: 'Alex', email: 'aaaa@aaa.com', passworld: 'topsecret' )
user_2 = User.new(user_name: 'Saurab', email: 'aaaa@aaa.com', passworld: 'topsecret' )
user_3 = User.new(user_name: 'Sajib', email: 'aaaa@aaa.com', passworld: 'topsecret' )
admin = User.new(user_name: 'Admin', email: 'aaaa@aaa.com', passworld: 'topsecretadmin', admin: true )
hackathon_1 = Hackathon.new(title: 'First one ever', topic: 'fantasy', description: 'The coolest', owner: 1, start_date: '2012/03/11', end_date: '2012/03/11', hackathon_venue: "west minister")

hackathon_2 = Hackathon.new(title: 'Second one ever', topic: 'Tech', description: 'The hotest', owner: 1, start_date: '2012/03/11', end_date: '2012/03/11', hackathon_venue: "east minister")

proposal_1= Proposal.new(userId: 1, title: 'first proposal', hkId: 1, description: 'hello world', customForm: 'form', votes: 0)
proposal_2= Proposal.new(userId: 2, title: '2nd proposal', hkId: 2, description: 'hello world', customForm: 'form', votes: 0)


proposal_1.hackathon= hackathon_1
proposal_2.hackathon= hackathon_1

proposal_1.hackathon= hackathon_2
proposal_2.hackathon= hackathon_2


proposal_1.user= user_1
proposal_2.user= user_2
proposal_1.user= user_2
proposal_2.user= user_2
proposal_1.user= user_3
proposal_2.user= user_3




hackathon_1.user= user_2

hackathon_1.user= user_1
hackathon_2.user= user_2

hackathon_2.user= user_1
hackathon_1.user= user_3
hackathon_1.user= admin


user_1.save!
user_2.save!
user_3.save!
admin.save!
hackathon_1.save!
hackathon_2.save!

proposal_1.save!
proposal_2.save!
# hackathon_1.save!
