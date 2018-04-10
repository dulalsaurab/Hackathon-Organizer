# == Schema Information
#
# Table name: searches
#
#  id                     :integer          not null, primary key
#  keywords               :string
#  topic                  :string
#  owner                  :integer
#  number_of_participants :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Search < ApplicationRecord

    def search_hackathons

        hackathons = Hackathon.all

        hackathons = hackathons.where(["title LIKE ?", "%#{keywords}%"]) if keywords.present?
        hackathons = hackathons.where(["topic LIKE ?", topic]) if topic.present?
        hackathons = hackathons.where(["owner >= ?", owner]) if owner.present?
        hackathons = hackathons.where(["number_of_participants LIKE ?", number_of_participants]) if number_of_participants.present?

        return hackathons
    end
    
end
