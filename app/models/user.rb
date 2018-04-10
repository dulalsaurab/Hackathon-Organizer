# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  user_name  :string
#  email      :string
#  passworld  :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  admin      :boolean
#

class User < ApplicationRecord
    has_many :hackathons
    has_many :proposals
    
end
