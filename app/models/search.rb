class Search < ApplicationRecord
    def search_hackathons

        hackathons = Hackathon.all

        hackathons = hackathons.where(["title LIKE ?", "%#{keywords}%"]) if keywords.present?
        hackathons = hackathons.where(["topic LIKE ?", topic]) if topic.present?
        hackathons = hackathons.where(["description LIKE ?", "%#{keywords}%"]) if keywords.present?
        hackathons = hackathons.where(["hackathon_venue LIKE ?", hackathon_venue]) if hackathon_venue.present?
        hackathons = hackathons.where(["start_date LIKE ?", start_date]) if start_date.present?
        hackathons = hackathons.where(["number_of_participants LIKE ?", number_of_participants]) if number_of_participants.present?

        return hackathons
    end
    
end
