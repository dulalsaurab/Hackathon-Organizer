class DeleteUserIdFromProposal < ActiveRecord::Migration[5.1]
  def change
	remove_column :proposals, :userId 
  end
end
