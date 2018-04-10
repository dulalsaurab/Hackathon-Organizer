class AddHackathonRefToProposals < ActiveRecord::Migration[5.1]
  def change
    add_reference :proposals, :hackathon, foreign_key: true
  end
end
