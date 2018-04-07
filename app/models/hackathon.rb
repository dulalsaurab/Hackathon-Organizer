class Hackathon < ApplicationRecord

    validates :title, presence: true
    validates :description, presence: true
    validates :topic, presence: true 
    validates :hackathon_venue, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true

end