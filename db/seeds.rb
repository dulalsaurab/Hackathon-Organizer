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

hackathon_1 = Hackathon.new(title: 'First one ever', topic: 'fantasy', description: 'The coolest', owner: 1, number_of_participants: 1)
hackathon_2 = Hackathon.new(title: 'Fantastic Five', topic: 'Superpower', description: 'The strongest', owner: 2, number_of_participants: 2)

hackathon_3 = Hackathon.new(title: 'Third one ever', topic: 'School', description: 'Boring classes', owner: 1, number_of_participants: 1)
hackathon_4 = Hackathon.new(title: 'Fourth one ever', topic: 'Tech', description: 'Developing faster', owner: 2, number_of_participants: 2)

proposal_1= Proposal.new(userId: 1, title: 'first proposal', hkId: 1, description: 'hello world', customForm: 'form', votes: 0)
proposal_2= Proposal.new(userId: 2, title: '2nd proposal', hkId: 2, description: 'hello world', customForm: 'form', votes: 0)


proposal_1.hackathon= hackathon_1
proposal_2.hackathon= hackathon_1

proposal_1.hackathon= hackathon_2
proposal_2.hackathon= hackathon_2
proposal_1.hackathon= hackathon_3
proposal_2.hackathon= hackathon_3
proposal_1.hackathon= hackathon_4
proposal_2.hackathon= hackathon_4

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
hackathon_3.user= user_3

hackathon_4.user= user_3

user_1.save!
user_2.save!
user_3.save!
admin.save!
hackathon_1.save!
hackathon_2.save!
hackathon_3.save!
hackathon_4.save!
proposal_1.save!
proposal_2.save!