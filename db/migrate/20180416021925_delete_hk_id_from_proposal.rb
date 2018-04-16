class DeleteHkIdFromProposal < ActiveRecord::Migration[5.1]
  def change
	remove_column :proposals, :hkId
  end
end
