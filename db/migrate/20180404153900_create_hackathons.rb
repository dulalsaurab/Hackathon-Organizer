class CreateHackathons < ActiveRecord::Migration[5.1]
  def change
    create_table :hackathons do |t|
      t.string :title
      t.string :topic
      t.text :description
      t.integer :owner
      t.integer :number_of_participants

      t.timestamps
    end
  end
end
