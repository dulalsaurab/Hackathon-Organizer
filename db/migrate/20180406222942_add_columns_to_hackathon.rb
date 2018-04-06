class AddColumnsToHackathon < ActiveRecord::Migration[5.1]
  def change
    add_column :hackathons, :end_date, :date
  end
end
