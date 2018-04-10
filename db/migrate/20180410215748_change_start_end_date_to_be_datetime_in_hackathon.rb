class ChangeStartEndDateToBeDatetimeInHackathon < ActiveRecord::Migration[5.1]
  def change
    change_column :hackathons, :start_date, :datetime
  end
end
