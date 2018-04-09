class AddHackathonVenueToHackathons < ActiveRecord::Migration[5.1]
  def change
    add_column :hackathons, :hackathon_venue, :text
  end
end
