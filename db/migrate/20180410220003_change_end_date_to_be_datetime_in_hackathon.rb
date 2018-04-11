class ChangeEndDateToBeDatetimeInHackathon < ActiveRecord::Migration[5.1]
  def change
    change_column :hackathons, :end_date, :datetime
  end
end
