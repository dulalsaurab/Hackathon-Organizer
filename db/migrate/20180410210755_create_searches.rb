class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :keywords
      t.string :topic
      t.text :description
      t.integer :owner
      t.integer :number_of_participants
      t.date :end_date
      t.date :start_date
      t.text :hackathon_venue

      t.timestamps
    end
  end
end
