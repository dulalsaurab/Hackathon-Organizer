class ChangeTypeOfPublicFlagHackathon < ActiveRecord::Migration[5.1]
  def change
    change_column :hackathons, :is_private, :string
  end
end
