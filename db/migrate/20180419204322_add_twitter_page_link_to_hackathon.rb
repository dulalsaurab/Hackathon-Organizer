class AddTwitterPageLinkToHackathon < ActiveRecord::Migration[5.1]
  def change
    add_column :hackathons, :twitter_link, :string
  end
end
