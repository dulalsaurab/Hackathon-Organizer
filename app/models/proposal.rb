class Proposal < ApplicationRecord
    belongs_to :user
    belongs_to :hackathon
    acts_as_votable
    
end
