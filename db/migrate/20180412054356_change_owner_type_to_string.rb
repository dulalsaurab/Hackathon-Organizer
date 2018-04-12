class ChangeOwnerTypeToString < ActiveRecord::Migration[5.1]
  def change
    change_column :hackathons, :owner, :string
  end
end
