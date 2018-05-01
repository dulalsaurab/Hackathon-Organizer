class CreateCustomeTables < ActiveRecord::Migration[5.1]
  def change
    create_table :custome_tables do |t|
      t.string :question
      t.string :answer
      t.string :identifier
      t.integer :identifier_id

      t.timestamps
    end
  end
end