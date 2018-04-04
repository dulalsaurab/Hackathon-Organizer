class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :email
      t.string :passworld
      t.string :phone

      t.timestamps
    end
  end
end
