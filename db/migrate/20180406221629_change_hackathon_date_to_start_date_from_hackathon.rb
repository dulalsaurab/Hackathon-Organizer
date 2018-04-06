class ChangeHackathonDateToStartDateFromHackathon < ActiveRecord::Migration[5.1]
  def change
    rename_column :hackathons, :hackathon_date, :start_date
  end
end
