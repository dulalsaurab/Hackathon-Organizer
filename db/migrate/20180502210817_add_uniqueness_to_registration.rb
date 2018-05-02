class AddUniquenessToRegistration < ActiveRecord::Migration[5.1]
  
  def change
    add_index :registrations, [:userId, :hackathon_id], unique: true
  end

end
