class AddPrivateIdColumnToSearches < ActiveRecord::Migration[5.1]
  def change
    add_column :searches, :is_private, :string
  end
end
