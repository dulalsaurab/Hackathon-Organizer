class CreateProposals < ActiveRecord::Migration[5.1]
  def change
    create_table :proposals do |t|
      t.integer :userId
      t.string :title
      t.integer :hkId
      t.text :description
      t.text :customForm
      t.integer :votes

      t.timestamps
    end
  end
end
