class AddPrivatePublicFlagToHackathon < ActiveRecord::Migration[5.1]
  def change
    add_column :hackathons, :is_private, :boolean
  end
end
