class AddPaperclipToHackathons < ActiveRecord::Migration[5.1]
  def up
    add_attachment :hackathons, :avatar
  end
  def down
    remove_attachment :hackathons, :avatar
  end
end
