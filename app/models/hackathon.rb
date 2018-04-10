# == Schema Information
#
# Table name: hackathons
#
#  id                     :integer          not null, primary key
#  title                  :string
#  topic                  :string
#  description            :text
#  owner                  :integer
#  number_of_participants :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  user_id                :integer
#
# Indexes
#
#  index_hackathons_on_user_id  (user_id)
#

class Hackathon < ApplicationRecord
    belongs_to :user
    has_many :proposals

    def self.search(search)
        if search
            where(["title LIKE ?", "%#{search}%"])
        else
            all
        end
    end
    
end
