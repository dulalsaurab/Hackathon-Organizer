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

    validates :title, presence: true
    validates :description, presence: true
    validates :topic, presence: true 
    validates :hackathon_venue, presence: true
    validates :start_date, presence: true
    validates :end_date, presence: true

    has_attached_file :avatar, styles: { medium: "300x200>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
    validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

end