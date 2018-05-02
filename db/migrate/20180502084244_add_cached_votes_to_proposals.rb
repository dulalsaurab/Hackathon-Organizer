class AddCachedVotesToProposals < ActiveRecord::Migration[5.1]
  def self.up
    add_column :proposals, :cached_votes_total, :integer, :default => 0
    add_column :proposals, :cached_votes_score, :integer, :default => 0
    add_column :proposals, :cached_votes_up, :integer, :default => 0
    add_column :proposals, :cached_votes_down, :integer, :default => 0
    add_column :proposals, :cached_weighted_score, :integer, :default => 0
    add_column :proposals, :cached_weighted_total, :integer, :default => 0
    add_column :proposals, :cached_weighted_average, :float, :default => 0.0
    add_index :proposals, :cached_votes_total
    add_index :proposals, :cached_votes_score
    add_index :proposals, :cached_votes_up
    add_index :proposals, :cached_votes_down
    add_index :proposals, :cached_weighted_score
    add_index :proposals, :cached_weighted_total
    add_index :proposals, :cached_weighted_average

  end

  def self.cached_votes_down
    remove_index :proposals, :cached_votes_total
    remove_index :proposals, :cached_votes_score
    remove_index :proposals, :cached_votes_up
    remove_index :proposals, :cached_votes_down
    remove_index :proposals, :cached_weighted_score
    remove_index :proposals, :cached_weighted_total
    remove_index :proposals, :cached_weighted_average
  end
end
