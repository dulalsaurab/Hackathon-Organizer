class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :topic
      t.integer :owner
      t.integer :number_of_participants

      t.timestamps
    end
  end
end
