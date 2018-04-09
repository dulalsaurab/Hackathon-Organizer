class AddStartDateToHackathons < ActiveRecord::Migration[5.1]
  def change
    add_column :hackathons, :start_date, :date
  end
end
