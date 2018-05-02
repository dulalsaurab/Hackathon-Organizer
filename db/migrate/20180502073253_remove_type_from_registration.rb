class RemoveTypeFromRegistration < ActiveRecord::Migration[5.1]
  def change
    remove_column :registrations, :type
  end
end
