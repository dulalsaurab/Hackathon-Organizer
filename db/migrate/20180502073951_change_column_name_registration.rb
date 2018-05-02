class ChangeColumnNameRegistration < ActiveRecord::Migration[5.1]
  def change
    rename_column :registrations, :HkId, :hackathon_id
  end
end
