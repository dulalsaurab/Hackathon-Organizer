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
=begin
    validates :title, presence: true
    validates :description, presence: true
    validates :topic, presence: true 
    validates :hackathon_venue, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true
=end
end